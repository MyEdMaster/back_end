
class division:

    def set_step(self, s):
        self.stepnow = s

    def __str__(self):
        return "(" + str(self.a) + "+" + str(self.b) + "i) / (" + str(self.c) + "+" + str(self.d)+ "i)"
    def __init__(self, a, b, c, d):


        self.step1for1 = []
        self.step1for2 = []
        self.step1error1 = []
        self.step1error2 = []
        self.step1error3 = []
        self.step2for1 = []
        self.step2for2 = []
        self.step2error1 = []
        self.step2error2 = []
        self.step2error3 = []
        self.step3for1 = []
        self.step3error1 = []
        self.step3error2 = []
        self.step4for1 = []
        self.step4error1 = []
        self.step5for1 = []
        self.step5error1 = []
        self.step5error2 = []


        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.stepnow = 1

        self.step1for1.append("(")
        self.step1for1.append(str(a))
        self.step1for1.append("+")
        self.step1for1.append(str(b) + "i")
        self.step1for1.append(")")
        self.step1for1.append("/")
        self.step1for1.append("(")
        self.step1for1.append(str(c))
        self.step1for1.append("+")
        self.step1for1.append(str(d) + "i")
        self.step1for1.append(")")

        self.step1for2.append("(")
        self.step1for2.append(str(b) + "i")
        self.step1for2.append("+")
        self.step1for2.append(str(a))
        self.step1for2.append(")")
        self.step1for2.append("/")
        self.step1for2.append("(")
        self.step1for2.append(str(d) + "i")
        self.step1for2.append("+")
        self.step1for2.append(str(c))
        self.step1for2.append(")")

        self.step1error1.append("(")
        self.step1error1.append(str(c))
        self.step1error1.append("+")
        self.step1error1.append(str(d) + "i")
        self.step1error1.append(")")
        self.step1error1.append("/")
        self.step1error1.append("(")
        self.step1error1.append(str(a))
        self.step1error1.append("+")
        self.step1error1.append(str(b) + "i")
        self.step1error1.append(")")

        self.step1error2.append("(")
        self.step1error2.append(str(b) + "i")
        self.step1error2.append("+")
        self.step1error2.append(str(d) + "i")
        self.step1error2.append(")")
        self.step1error2.append("/")
        self.step1error2.append("(")
        self.step1error2.append(str(a))
        self.step1error2.append("+")
        self.step1error2.append(str(c))
        self.step1error2.append(")")

        self.step1error3.append(str(a))
        self.step1error3.append("+")
        self.step1error3.append(str(b) + "i")
        self.step1error3.append("/")
        self.step1error3.append(str(c))
        self.step1error3.append("+")
        self.step1error3.append(str(d) + "i")

        self.step2for1.append("(")
        self.step2for1.append("(")
        self.step2for1.append(str(a))
        self.step2for1.append("+")
        self.step2for1.append(str(b) + "i")
        self.step2for1.append(")")
        self.step2for1.append("*")
        self.step2for1.append("(")
        self.step2for1.append(str(c))
        self.step2for1.append("+")
        self.step2for1.append(str(-1 * d) + "i")
        self.step2for1.append(")")
        self.step2for1.append(")")
        self.step2for1.append("/")
        self.step2for1.append("(")
        self.step2for1.append("(")
        self.step2for1.append(str(c))
        self.step2for1.append("+")
        self.step2for1.append(str(d) + "i")
        self.step2for1.append(")")
        self.step2for1.append("*")
        self.step2for1.append("(")
        self.step2for1.append(str(c))
        self.step2for1.append("+")
        self.step2for1.append(str(-1 * d) + "i")
        self.step2for1.append(")")
        self.step2for1.append(")")

        self.step2for2.append("(")
        self.step2for2.append("(")
        self.step2for2.append(str(b) + "i")
        self.step2for2.append("+")
        self.step2for2.append(str(a))
        self.step2for2.append(")")
        self.step2for2.append("*")
        self.step2for2.append("(")
        self.step2for2.append(str(-1 * d) + "i")
        self.step2for2.append("+")
        self.step2for2.append(str(c))
        self.step2for2.append(")")
        self.step2for2.append(")")
        self.step2for2.append("/")
        self.step2for2.append("(")
        self.step2for2.append("(")
        self.step2for2.append(str(d) + "i")
        self.step2for2.append("+")
        self.step2for2.append(str(c))
        self.step2for2.append(")")
        self.step2for2.append("*")
        self.step2for2.append("(")
        self.step2for2.append(str(-1 * d) + "i")
        self.step2for2.append("+")
        self.step2for2.append(str(c))
        self.step2for2.append(")")
        self.step2for2.append(")")

        self.step2error1.append("(")
        self.step2error1.append("(")
        self.step2error1.append(str(a))
        self.step2error1.append("+")
        self.step2error1.append(str(b) + "i")
        self.step2error1.append(")")
        self.step2error1.append("*")
        self.step2error1.append("(")
        self.step2error1.append(str(c))
        self.step2error1.append("+")
        self.step2error1.append(str(d) + "i")
        self.step2error1.append(")")
        self.step2error1.append(")")
        self.step2error1.append("/")
        self.step2error1.append("(")
        self.step2error1.append("(")
        self.step2error1.append(str(c))
        self.step2error1.append("+")
        self.step2error1.append(str(d) + "i")
        self.step2error1.append(")")
        self.step2error1.append("*")
        self.step2error1.append("(")
        self.step2error1.append(str(c))
        self.step2error1.append("+")
        self.step2error1.append(str(d) + "i")
        self.step2error1.append(")")
        self.step2error1.append(")")

        self.step2error2.append("(")
        self.step2error2.append(str(a))
        self.step2error2.append("/")
        self.step2error2.append(str(c))
        self.step2error2.append(")")
        self.step2error2.append("+")
        self.step2error2.append("(")
        self.step2error2.append(str(b) + "i")
        self.step2error2.append("/")
        self.step2error2.append(str(d) + "i")
        self.step2error2.append(")")

        self.step2error3.append("(")
        self.step2error3.append(str(a))
        self.step2error3.append("+")
        self.step2error3.append(str(b) + "i")
        self.step2error3.append(")")
        self.step2error3.append("*")
        self.step2error3.append("(")
        self.step2error3.append(str(c))
        self.step2error3.append("+")
        self.step2error3.append(str(-1 * d) + "i")
        self.step2error3.append(")")
        self.step2error3.append("/")
        self.step2error3.append("(")
        self.step2error3.append(str(c))
        self.step2error3.append("+")
        self.step2error3.append(str(d) + "i")
        self.step2error3.append(")")
        self.step2error3.append("*")
        self.step2error3.append("(")
        self.step2error3.append(str(c))
        self.step2error3.append("+")
        self.step2error3.append(str(-1 * d) + "i")
        self.step2error3.append(")")

        step3for1ac = a * c
        step3for1ad = a * d
        step3for1bc = b * c
        step3for1bd = b * d
        step3for1c2 = c * c
        step3for1cd = c * d
        step3for1d2 = d * d

        self.step3for1.append("(")
        self.step3for1.append(str(step3for1ac))
        self.step3for1.append("+")
        self.step3for1.append(str(-1 * step3for1ad) + "i")
        self.step3for1.append("+")
        self.step3for1.append(str(step3for1bc) + "i")
        self.step3for1.append("+")
        self.step3for1.append(str(-1 * step3for1bd) + "i^2")
        self.step3for1.append(")")
        self.step3for1.append("/")
        self.step3for1.append("(")
        self.step3for1.append(str(step3for1c2))
        self.step3for1.append("+")
        self.step3for1.append(str(-1 * step3for1cd) + "i")
        self.step3for1.append("+")
        self.step3for1.append(str(step3for1cd) + "i")
        self.step3for1.append("+")
        self.step3for1.append(str(-1 * step3for1d2) + "i^2")
        self.step3for1.append(")")

        self.step3error1.append("(")
        self.step3error1.append(str(step3for1ac))
        self.step3error1.append("+")
        self.step3error1.append(str(step3for1ad) + "i")
        self.step3error1.append("+")
        self.step3error1.append(str(step3for1bc) + "i")
        self.step3error1.append("+")
        self.step3error1.append(str(step3for1bd) + "i^2")
        self.step3error1.append(")")
        self.step3error1.append("/")
        self.step3error1.append("(")
        self.step3error1.append(str(step3for1c2))
        self.step3error1.append("+")
        self.step3error1.append(str(step3for1cd) + "i")
        self.step3error1.append("+")
        self.step3error1.append(str(step3for1cd) + "i")
        self.step3error1.append("+")
        self.step3error1.append(str(step3for1d2) + "i^2")
        self.step3error1.append(")")

        self.step3error2.append(str(step3for1ac))
        self.step3error2.append("+")
        self.step3error2.append(str(-1 * step3for1ad) + "i")
        self.step3error2.append("+")
        self.step3error2.append(str(step3for1bc) + "i")
        self.step3error2.append("+")
        self.step3error2.append(str(-1 * step3for1bd) + "i^2")
        self.step3error2.append("/")
        self.step3error2.append(str(step3for1c2))
        self.step3error2.append("+")
        self.step3error2.append(str(-1 * step3for1cd) + "i")
        self.step3error2.append("+")
        self.step3error2.append(str(step3for1cd) + "i")
        self.step3error2.append("+")
        self.step3error2.append(str(-1 * step3for1d2) + "i^2")

        self.step4for1.append("(")
        self.step4for1.append(str(step3for1ac))
        self.step4for1.append("+")
        self.step4for1.append(str(step3for1bc + -1 * step3for1ad) + "i")
        self.step4for1.append("+")
        self.step4for1.append(str(step3for1bd))
        self.step4for1.append(")")
        self.step4for1.append("/")
        self.step4for1.append("(")
        self.step4for1.append(str(step3for1c2))
        self.step4for1.append("+")
        self.step4for1.append(str(step3for1d2))
        self.step4for1.append(")")

        self.step4error1.append("(")
        self.step4error1.append(str(step3for1ac))
        self.step4error1.append("+")
        self.step4error1.append(str(step3for1bc + -1 * step3for1ad) + "i")
        self.step4error1.append("+")
        self.step4error1.append(str(-1 * step3for1bd))
        self.step4error1.append(")")
        self.step4error1.append("/")
        self.step4error1.append("(")
        self.step4error1.append(str(step3for1c2))
        self.step4error1.append("+")
        self.step4error1.append(str(-1 * step3for1d2))
        self.step4error1.append(")")

        self.step5for1.append("(")
        self.step5for1.append(str(step3for1ac + step3for1bd))
        self.step5for1.append("+")
        self.step5for1.append(str(step3for1bc + -1 * step3for1ad) + "i")
        self.step5for1.append(")")
        self.step5for1.append("/")
        self.step5for1.append("(")
        self.step5for1.append(str(step3for1c2 + step3for1d2))
        self.step5for1.append(")")

        self.step5error1.append(str(step3for1ac + step3for1bd))
        self.step5error1.append("+")
        self.step5error1.append(str(step3for1bc + -1 * step3for1ad) + "i")
        self.step5error1.append("/")
        self.step5error1.append(str(step3for1c2 + step3for1d2))


        self.step5error2.append("(")
        self.step5error2.append(str(step3for1ac + step3for1bd))
        self.step5error2.append("+")
        self.step5error2.append(str(step3for1bc + -1 * step3for1ad) + "i")
        self.step5error2.append(")")
        self.step5error2.append("/")
        self.step5error2.append("(")
        self.step5error2.append(str((c + d) ^ 2))
        self.step5error2.append(")")

    def format(self, ins):
        ins = str(ins)
        ins = ins.replace(" ", "")
        save = []
        if len(ins) == 0:
            return False
        for i in ins:
            if i not in "0123456789+-*/()^i":
                return False

        i = 0
        while i < len(ins):
            if ins[i] == "(":
                save.append("(")
                i += 1
            elif ins[i] == ")":
                save.append(")")
                i += 1
            elif ins[i] == "+":
                save.append("+")
                i += 1
            elif ins[i] == "*":
                save.append("*")
                i += 1
            elif ins[i] == "/":
                save.append("/")
                i += 1
            elif ins[i] == "-":
                if ins[i - 1] != "(" and i != 0 and ins[i - 1] != "/":
                    save.append("+")
                j = i
                tmps = "-"
                j += 1
                while j < len(ins) and ins[j] in "0123456789i^":
                    tmps += ins[j]
                    j += 1
                save.append(tmps)
                i = j
            elif ins[i] in "0123456789i":
                j = i
                tmps = ""
                while j < len(ins) and ins[j] in "0123456789i^":
                    tmps += ins[j]
                    j += 1
                save.append(tmps)
                i = j

        return save

    def sequence(self, f1=[]):
        for i in range(len(f1) - 4):
            if f1[i] == "(" and f1[i + 4] == ")":
                if "i" in f1[i + 1] and "i" not in f1[i + 3]:
                    tmp1 = f1[i + 3]
                    f1[i + 3] = f1[i + 1]
                    f1[i + 1] = tmp1
        return f1

    def equal(self, f1=[], f2=[]):
        f1 = self.sequence(f1)
        f2 = self.sequence(f2)

        if f1 == f2:
            return True

        return False


    def step(self):
        return "step" + str(self.stepnow)

    def input(self, in1 = " "):
        if self.stepnow == 6:
            return "finished"


        instr = self.format(in1)


        if instr == False:
            return "wrong format"

        if self.stepnow == 1:
            if self.equal(instr, self.step2for1):
                self.stepnow = 3
                return "Your second step is correct"


            elif self.equal(instr, self.step2for2):
                self.stepnow = 3
                return "Your second step is correct"


            elif self.equal(instr, self.step1for1):
                self.stepnow = 2
                return "Your first step is correct"

            elif self.equal(instr, self.step1for2):
                self.stepnow = 2
                return "Your first step is correct"

            elif self.equal(instr, self.step1error1):
                return "Your first step has a mistake: reciprcal of original problem"


            elif self.equal(instr, self.step1error2):
                return "Your first step has a mistake: misplacement of numbers"

            elif self.equal(instr, self.step1error3):
                return "Your first step has a mistake: order of operations. please specify with parentheses."
            else:
                return "Your first step has a mistake"


        elif self.stepnow == 2:
            if self.equal(instr, self.step2for1):
                self.stepnow = 3
                return "Your second step is correct"

            if self.equal(instr, self.step2for2):
                self.stepnow = 3
                return "Your second step is correct"

            elif self.equal(instr, self.step2error1):

                return "Your second step has a mistake: multiplying by wrong conjugate"

            elif self.equal(instr, self.step2error2):
                 return "Your second step has a mistake: fundamental misunderstanding about dividing fractions"

            elif self.equal(instr, self.step2error3):
                return "Your second step has a mistake: order of operations, please specify with parentheses."
            else:
                return "Your second step has a mistake"




        # order of operations error. please specify with parentheses.

        #
        elif self.stepnow == 3:
            if self.equal(instr, self.step3for1):
                self.stepnow = 4
                return "Your third step is correct"

            elif self.equal(instr, self.step3error1):
                return "Your third step has a mistake: mixing up signs while multiplying"

            elif self.equal(instr, self.step3error2):
                return "Your third step has a mistake: order of operations"
            else:
                return "Your third step has a mistake"
        elif self.stepnow == 4:
            if self.equal(instr, self.step4for1):
                self.stepnow = 5
                return "Your fourth step is correct"

            elif self.equal(instr, self.step4error1):
                return "Your fourth step has a mistake: simplifies i^2 to 1 and not -1"

            else:
                return "Your fourth step has a mistake"
        elif self.stepnow == 5:
            if self.equal(instr, self.step5for1):
                self.stepnow = 6
                return "Your fifth step is correct"

            elif self.equal(instr, self.step5error1):
                return "Your fifth step has a mistake: order of operations, please specify with parentheses."

            elif self.equal(instr, self.step5error2):
                return "Your fifth step has a mistake: the denominator format is incorrect."

            else:
                return "Your fifth step has a mistake"

        return "finish"
#
#
# tmp = division(-6, -4, 2, 5)
# tmp.set_step(5)
# print(tmp.step5error1)
# print(tmp.input("-32 + 22i/29"))
