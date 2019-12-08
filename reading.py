

import simpledatabase
import similarity_core

question_list = [
    "Why did Little Red Riding Hood's mother give Little Red Riding Hood a basket of treats?",
    "Why did Little Red Riding Hood's mother tell Little Red Riding Hood not to talk to strangers?",
    "Why did Little Red Riding Hood talk to the wolf?",
    "Why did the wolf ask Little Red Riding Hood what she was doing in the forest?",
    "Why did the wolf dress as Little Red Riding Hood's grandmother?",
    "Why did the wolf go to Little Red Riding Hood's grandmother's house?",
    "Why did the wolf pretend to be Little Red Riding Hood's grandmother?",
    "Why does Little Red Riding Hood say to the wolf \"What big eyes you have?\"",
    "Why does Little Red Riding Hood say to the wolf \"What big ears you have?\"",
    "Why does Little Red Riding Hood say to the wolf \"What big teeth you have?\"",
    "Why does the wolf want to eat Little Red Riding Hood?",
    "Why does the wolf put Little Red Riding Hood's grandmother in the closet?",
    "Why does the lumberjack help Little Red Riding Hood?",
    "Why doesn't the lumberjack kill the wolf?",
    "Why is the wolf so bad?",
    "Why couldn't Little Red Riding Hood's grandmother stop the wolf?",
    "How come the wolf can talk?",
    "Why didn't the wolf eat Little Red Riding Hood's grandmother?",
    "Are all strangers bad?",
    "Can grown-ups talk to strangers?",
    "Why is it bad to talk to strangers?",
    "How did the wolf know where Little Red Riding Hood's grandmother's house is?",
    "Why did Little Red Riding Hood realize the lesson at the end of the story?",
    "Why did Little Red Riding Hood go into the woods alone?",
    "Why didn't the grandmother cry for help?",
    "Why did the grandmother think the wolf was Little Red Riding Hood?",
    "Is this story true?"]

answer_list = ["To give to her grandmother.",
               "Because she thought there might be bad strangers in the woods.",
               "She forgot what her mother told her about not talking to strangers.",
               "So he could find out where she was going.",
               "To trick Little Red Riding Hood into thinking he was her grandmother.",
               "So he could eat Little Red Riding Hood and her grandmother.",
               "To trick Little Red Riding Hood to coming closer to him so he could get her.",
               "Because the wolf's eyes didn't look like her grandmother's eyes.",
               "Because the wolf's ears didn't look like her grandmother's ears.",
               "Because the wolf's teeth didn't look like her grandmother's teeth.",
               "Because the wolf likes to eat people.",
               "To keep her hidden until Little Red Riding Hood arrives.",
               "He wants to save her from the wolf.",
               "The lumberjack just wants to save Little Red Riding Hood. He doesn't want to hurt the wolf.",
               "He is bad because he wants to hurt Little Red Riding Hood and her grandmother.",
               "The wolf is much stronger than Little Red Riding Hood's grandmother.",
               "This is a story and in some stories, animals can talk.",
               "The wolf didn't have enough time to eat the grandmother before Little Red Riding Hood arrived.",
               "Not all strangers are bad.   But it can be hard for a child to tell a good stranger from a bad stranger.",
               "Grown-ups sometimes talk to strangers.  But they are still careful about which strangers they talk to.",
               "You shouldn't talk to people you don't know because some strangers may try to hurt you.",
               "The wolf lives in the woods, so he knows where the houses are.",
               "She saw what happens when she talked to a stranger.",
               "This was the way to get to her grandmother's house.",
               "The wolf grabbed her too quickly.",
               "She was expecting only Little Red Riding Hood and no one else.",
               "The story is not true."
               ]






class Reading:



    def compare(self, a):
        return a[0]

    def classify(self, inputs=""):
        similar_score = []
        for s in range(len(question_list)):
            similar_score.append(
                [self.core.get_score(inputs, [question_list[s]],special_word = [],level = 1), question_list[s], answer_list[s]])
        print("ok")
        similar_score.sort(key=self.compare, reverse=True)



        question = similar_score[0][1]
        print(similar_score)
        if similar_score[0][0][0] < 0.2:
            return -2, "can't understand"
        if similar_score[0][0][0] < 0.92:
            return -1, question

        return simpledatabase.help2(question), question

    def __init__(self, core):
        self.core = core

#
#
# similar_scoretmp = similarity_core.similarity_core()
# tmp2= Reading(similar_scoretmp)
# print(tmp2.classify("to protect little red riding hood, because a stranger might hurt little red riding hood"))
