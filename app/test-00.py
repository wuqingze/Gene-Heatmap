f = open('../data/gene-data-00', 'r')
for line in f:
    t = line.split(',')
    s = ''
    for i in range(10):
        s += t[i]+','
    s+=t[10]
    print(s)
