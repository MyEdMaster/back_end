

fh = open(r'/Users/yihao/PycharmProjects/goonserver/test.txt')
for line in fh.readlines():
    tmp = "\""+ line.replace("\n", "") + "\","
    print(tmp)