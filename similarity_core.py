import pandas as pd
import numpy as np
import tensorflow as tf
import ssl
import nltk

import math
import os

import requests


from gensim import models
from sklearn.metrics.pairwise import cosine_similarity
from collections import Counter


nltk.download('punkt')
nltk.download('stopwords')

STOP = set(nltk.corpus.stopwords.words("english"))






class Sentence:

    def __init__(self, sentence):

        self.raw = sentence
        normalized_sentence = sentence.replace("‘", "'").replace("’", "'")
        self.tokens = [t.lower() for t in nltk.word_tokenize(normalized_sentence)]

        self.tokens_without_stop = [t for t in self.tokens if t not in STOP]

    def __str__(self):
        return self.raw

class similarity_core:


    def load_sts_dataset(self, filename):

        sent_pairs = []
        # with tf.gfile.GFile(filename, "r") as f:
        with tf.io.gfile.GFile(filename, "r") as f:
            for line in f:
                ts = line.strip().split("\t")
                sent_pairs.append((ts[5], ts[6], float(ts[4])))
        return pd.DataFrame(sent_pairs, columns=["sent_1", "sent_2", "sim"])


    def download_and_load_sts_data(self):
        sts_dataset = tf.keras.utils.get_file(
            fname="Stsbenchmark.tar.gz",
            origin="http://ixa2.si.ehu.es/stswiki/images/4/48/Stsbenchmark.tar.gz",
            extract=True)

        sts_dev = self.load_sts_dataset(os.path.join(os.path.dirname(sts_dataset), "stsbenchmark", "sts-dev.csv"))
        sts_test = self.load_sts_dataset(os.path.join(os.path.dirname(sts_dataset), "stsbenchmark", "sts-test.csv"))

        return sts_dev, sts_test

    def download_sick(self, f):
        response = requests.get(f).text

        lines = response.split("\n")[1:]
        lines = [l.split("\t") for l in lines if len(l) > 0]
        lines = [l for l in lines if len(l) == 5]

        df = pd.DataFrame(lines, columns=["idx", "sent_1", "sent_2", "sim", "label"])
        df['sim'] = pd.to_numeric(df['sim'])
        return df
    
    def special_score(self, sentence1, sentence2, special_token_used):
        
        sent1 = sentence1.raw
        sent2 = sentence2.raw

        

        # special_token_lst = [['+'],[],[],[],[],[],['c-di'],['FOIL'],['FOIL'],['ac-adi'],['cdi'],[],['+']]
        # special_token_used = special_token_lst[question_num]

        l = len(special_token_used)
        s = 0
        for special_token in special_token_used:
            if special_token in sent1:
                s += 1
        
        if l == 0:
            return 0
        else:
            return s/(l*1.0)
        

        

    def run_avg_benchmark(self, sentences1, sentences2, model=None, use_stoplist=False, doc_freqs=None):
        if doc_freqs is not None:
            N = doc_freqs["NUM_DOCS"]

        sims = []
        sent1 = sentences1
        sent2 = sentences2

        tokens1 = sent1.tokens_without_stop if use_stoplist else sent1.tokens
        tokens2 = sent2.tokens_without_stop if use_stoplist else sent2.tokens

        tokens1 = [token for token in tokens1 if token in model]
        tokens2 = [token for token in tokens2 if token in model]


        if not len(tokens1):
            return [0.001]

        tokfreqs1 = Counter(tokens1)

        tokfreqs2 = Counter(tokens2)

        weights1 = [tokfreqs1[token] * math.log(N / (doc_freqs.get(token, 0) + 1))
                    for token in tokfreqs1] if doc_freqs else None
        weights2 = [tokfreqs2[token] * math.log(N / (doc_freqs.get(token, 0) + 1))
                    for token in tokfreqs2] if doc_freqs else None

        embedding1 = np.average([model[token] for token in tokfreqs1], axis=0, weights=weights1).reshape(1, -1)
        embedding2 = np.average([model[token] for token in tokfreqs2], axis=0, weights=weights2).reshape(1, -1)



        sim = cosine_similarity(embedding1, embedding2)[0][0]
        sims.append(sim)

        return sims

    def get_score(self, s1 = "",s2=[], special_word = [],level = 1):
        if level == 1:
            tmp1 = Sentence(s1)
            tmp2 = Sentence(s2[0])
            print(tmp1.raw)
            print(tmp2.raw)
            print("ok")
            score1 = self.run_avg_benchmark(tmp1, tmp2, self.word2vec)

            score2 = self.special_score(tmp1, tmp2, special_word)
            print(score1)
            print(score2)

            if score2 == 0:
                return score1
            else:
                # score = 0.8*score1[0] + 0.2*score2
                # score = max(score1[0], 0.8 + score2 *0.2)
                score = 0.1 * score1[0] + 0.9 * (0.7 + score2 * 0.2)
                return [score]
        elif level == 2:
            tem_lst = []
            tmp1 = Sentence(s1)
            for t in s2:
                t2 = Sentence(t)
                score1 = self.run_avg_benchmark(tmp1, t2, self.word2vec)
                score2 = self.special_score(tmp1, t2, special_word)
                if score2 == 0:
                    tem_lst.append(score1[0])
                else:
                    score_tem = 0.1 * score1[0] + 0.9 * (0.7 + score2 * 0.2)
                    tem_lst.append(score_tem)
            score = np.max(tem_lst)
            return [score]
            






    def __init__(self):

        self.sts_dev, self.sts_test = self.download_and_load_sts_data()

        sick_train = self.download_sick("https://raw.githubusercontent.com/alvations/stasis/master/SICK-data/SICK_train.txt")
        sick_dev = self.download_sick("https://raw.githubusercontent.com/alvations/stasis/master/SICK-data/SICK_trial.txt")
        sick_test = self.download_sick(
            "https://raw.githubusercontent.com/alvations/stasis/master/SICK-data/SICK_test_annotated.txt")
        self.sick_all = sick_train.append(sick_test).append(sick_dev)

        try:
            _create_unverified_https_context = ssl._create_unverified_context
        except AttributeError:
            pass
        else:
            ssl._create_default_https_context = _create_unverified_https_context

        PATH_TO_WORD2VEC = os.path.expanduser(
            "data/GoogleNews-vectors-negative300.bin")
        self.word2vec = models.KeyedVectors.load_word2vec_format(PATH_TO_WORD2VEC, binary=True)

#
# tmp = similarity_core()


# print(tmp.get_score("the format is a+bi","It has a numerator of the format a+bi and denominator of the form c+di",['a+bi','c+di']))

# print(tmp.get_score("FOIL is strong","FOIL stands for First, Outer, Inner, Last. It comes from the distributive property.",['FOIL']))
