f = open('gene-data', 'r')
i = 0
for line in f:
    print(line[0:100])
    i +=1
    if i== 20:
        break
