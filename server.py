

from flask import Flask, request
from flask_cors import *
import json
app = Flask(__name__)
CORS(app, supports_credentials=True)
#
import complex_num4
import complex_num1
import complex_num2
import complex_num3


import ask_question_1
import ask_question_2

import analyse_answer1
import analyse_answer2

import similarity_core


core = similarity_core.similarity_core()
ask_question_p1 = ask_question_1.ask_question_1(core)
# t2 = [3, 2, 3, 3, 3, 3, 3, 1, 2, 1, 3, 2, 1, 3, 2, 1, 3, 1, 2, 3, 2, 1, 3, 2, 3, 2, 1]
# t3 = simpledatabase.help1()


@app.route('/ask_question/p1', methods=['POST'])
def q1():
    ttt = request.get_json()["question"]



    result = ask_question_p1.classify(ttt)
    score1 = result[0][0]
    score2 = result[1][0]
    score3 = result[2][0]

    question1 = result[0][1]
    question2 = result[1][1]
    question3 = result[2][1]

    answer1 = result[0][2]
    answer2 = result[1][2]
    answer3 = result[2][2]

    out = {}
    out["type"] = "3"
    out["question1"] = question1
    out["question2"] = question2
    out["question3"] = question3
    out["answer1"] = answer1
    out["answer2"] = answer2
    out["answer3"] = answer3


    if score1 > 0.92:
        out["type"] = "1"
    elif score1 > 0.5:
        out["type"] = "2"
    out = json.dumps(out)
    return out





ask_question_p2 = ask_question_2.ask_question_2(core)

@app.route('/ask_question/p2', methods=['POST'])
def q2():
    ttt = request.get_json()["question"]



    result = ask_question_p2.classify(ttt)
    score1 = result[0][0]
    score2 = result[1][0]
    score3 = result[2][0]

    question1 = result[0][1]
    question2 = result[1][1]
    question3 = result[2][1]

    answer1 = result[0][2]
    answer2 = result[1][2]
    answer3 = result[2][2]


    out = {}
    out["type"] = "3"
    out["question1"] = question1
    out["question2"] = question2
    out["question3"] = question3
    out["answer1"] = answer1
    out["answer2"] = answer2
    out["answer3"] = answer3

    example1 = result[0][3]
    example2 = result[1][3]
    example3 = result[2][3]

    example1_exist = "2" if example1 == "" else "1"
    example2_exist = "2" if example2 == "" else "1"
    example3_exist = "2" if example3 == "" else "1"

    out["example1"] = example1
    out["example2"] = example2
    out["example3"] = example3

    out["example1_exist"] = example1_exist
    out["example2_exist"] = example2_exist
    out["example3_exist"] = example3_exist


    if score1 > 0.92:
        out["type"] = "1"
    elif score1 > 0.5:
        out["type"] = "2"
    out = json.dumps(out)
    return out


##复数除法

@app.route('/complex_number/4', methods=['POST'])
def hello_world2():


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


    division = complex_num4.division(a, b, c, d)
    division.set_step(step)

    content = division.input(answer)
    stepnow = division.stepnow
    finish = division.is_finish()

    type = 1
    if stepnow == step:
        type = 0
    elif finish == 1:
        type = 2

    out = {}
    out["type"] = str(type)
    out["step"] = str(stepnow)
    out["content"] = content


    out = json.dumps(out)
    return out

##复数加法
@app.route('/complex_number/1', methods=['POST'])
def hello_world3():


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


    division = complex_num1.addition(a, b, c, d)
    division.set_step(step)

    content = division.input(answer)
    stepnow = division.stepnow
    finish = division.is_finish()

    type = 1
    if stepnow == step:
        type = 0
    elif finish == 1:
        type = 2


    out = {}
    out["type"] = str(type)
    out["step"] = str(stepnow)
    out["content"] = content


    out = json.dumps(out)
    return out

##复数减法

@app.route('/complex_number/2', methods=['POST'])
def hello_world4():


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


    division = complex_num2.subtraction(a, b, c, d)
    division.set_step(step)

    content = division.input(answer)
    stepnow = division.stepnow
    finish = division.is_finish()

    type = 1
    if stepnow == step:
        type = 0
    elif finish == 1:
        type = 2


    out = {}
    out["type"] = str(type)
    out["step"] = str(stepnow)
    out["content"] = content


    out = json.dumps(out)
    return out

##复数乘法
@app.route('/complex_number/3', methods=['POST'])
def hello_world5():


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


    division = complex_num3.multiplication(a, b, c, d)
    division.set_step(step)

    content = division.input(answer)
    stepnow = division.stepnow
    finish = division.is_finish()

    type = 1
    if stepnow == step:
        type = 0
    elif finish == 1:
        type = 2


    out = {}
    out["type"] = str(type)
    out["step"] = str(stepnow)
    out["content"] = content


    out = json.dumps(out)
    return out




















ff = analyse_answer1.analyse_answer1(core)

@app.route('/feedback/question', methods=['get'])
def getquestion():

    out = ff.getquestion()

    return out




@app.route('/analyse_answer/a1', methods=['post'])
def getanswer():
    question_id = int(request.get_json()["question_id"])
    inanswer = request.get_json()["answer"]

    score, question, answer = ff.checkanswer(inanswer, question_id)
    out = {}
    out["type"] = "3"
    out["question"] = question
    out["answer"] = answer
    if score > 0.92:
        out["type"] = "1"
    elif score > 0.5:
        out["type"] = "2"
    out = json.dumps(out)
    return out



ff2 = analyse_answer2.analyse_answer2(core)


@app.route('/feedback/CN/question', methods=['get'])
def getquestion2():

    out = ff2.getquestion()

    return out




@app.route('/analyse_answer/a2', methods=['post'])
def getanswer2():
    question_id = int(request.get_json()["question_id"])
    inanswer = request.get_json()["answer"]

    score, question, answer = ff2.checkanswer(inanswer, question_id)
    print(score)
    out = {}
    out["type"] = "3"
    out["question"] = question
    out["answer"] = answer
    if score > 0.85:
        out["type"] = "1"
    elif score > 0.5:
        out["type"] = "2"
    out = json.dumps(out)
    return out




## FOIL1
import FOIL1
@app.route('/FOIL/1', methods=['POST'])
def FOIL1_f():


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


    division = FOIL1.foil1(a, b, c, d)
    division.set_step(step)

    content = division.input(answer)
    stepnow = division.stepnow
    finish = division.is_finish()

    type = 1
    if stepnow == step:
        type = 0
    elif finish == 1:
        type = 2


    out = {}
    out["type"] = str(type)
    out["step"] = str(stepnow)
    out["content"] = content


    out = json.dumps(out)
    return out


## FOIL2
import FOIL2
@app.route('/FOIL/2', methods=['POST'])
def FOIL2_f():


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


    division = FOIL2.foil2(a, b, c, d)
    division.set_step(step)

    content = division.input(answer)
    stepnow = division.stepnow
    finish = division.is_finish()

    type = 1
    if stepnow == step:
        type = 0
    elif finish == 1:
        type = 2


    out = {}
    out["type"] = str(type)
    out["step"] = str(stepnow)
    out["content"] = content


    out = json.dumps(out)
    return out









@app.route('/test', methods=['get'])
def test():


    return "good"


if __name__ == '__main__':
    app.run()
