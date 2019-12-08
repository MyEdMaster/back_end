

from flask import Flask, request
from flask_cors import *
import json
app = Flask(__name__)
CORS(app, supports_credentials=True)
#
import complex_num
import feedback
import reading
import simpledatabase
import similarity_core
import feedback_complexnumber

core = similarity_core.similarity_core()
tmp = reading.Reading(core)
t2 = [3, 2, 3, 3, 3, 3, 3, 1, 2, 1, 3, 2, 1, 3, 2, 1, 3, 1, 2, 3, 2, 1, 3, 2, 3, 2, 1]
t3 = simpledatabase.help1()


@app.route('/getanswer', methods=['POST'])
def hello_world():
    ttt = request.get_json()["question"]



    number, question = tmp.classify(ttt)
    print(number)
    print(question)
    if number == -1:
        answer = "0"
        answer += question
        print("not find")
        return answer
    elif number == -2:
        answer = "2"
        answer += question
        print("not find")
        return answer

    id = number
    answer = "1"
    answer += t3[id][t2[id] + 1]
    return answer



@app.route('/complexnumber', methods=['POST'])
def hello_world2():



    print(request.get_json())
    a = request.get_json()["A"]
    b = request.get_json()["B"]
    c = request.get_json()["C"]
    d = request.get_json()["D"]
    a = int(a)
    b = int(b)
    c = int(c)
    d = int(d)
    step = request.get_json()["step"]
    step = int(step)
    answer = request.get_json()["answer"]


    division = complex_num.division(a, b, c, d)
    division.set_step(step)
    print("answer")
    print(answer)
    print("qustion")
    print(division)
    print("step")
    print(division.stepnow)
    print("back")

    out = division.input(answer)
    print(out)
    stepnow = division.stepnow



    if stepnow == step:
        return "0" + str(stepnow) + out




    return "1" + str(stepnow) + out


ff = feedback.feedback(core)

@app.route('/feedback/question', methods=['get'])
def getquestion():

    out = ff.getquestion()

    return out




@app.route('/feedback/checkanswer', methods=['post'])
def getanswer():
    question_id = int(request.get_json()["question"])
    inanswer = request.get_json()["answer"]

    score, answer = ff.checkanswer(inanswer, question_id)
    return str(score) + answer



ff2 = feedback_complexnumber.feedback_CN(core)


@app.route('/feedback/CN/question', methods=['get'])
def getquestion2():

    out = ff2.getquestion()

    return out




@app.route('/feedback/CN/checkanswer', methods=['post'])
def getanswer2():
    question_id = int(request.get_json()["question"])
    inanswer = request.get_json()["answer"]

    score, answer = ff2.checkanswer(inanswer, question_id)
    return str(score) + answer








@app.route('/test', methods=['get'])
def test():


    return "good"


if __name__ == '__main__':
    app.run()
