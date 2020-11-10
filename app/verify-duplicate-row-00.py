f = open('../data/gene-data', 'r')
tset = set()
s = []
c = 0
for line in f:
    t = line.split(',')[0]
    if t not in s:
        s.append(t)
    else:
        tset.add(t)
f = open('../data/gene-data', 'r')
for line in f:
    t = line.split(',')[0]
    if t not in tset:
        print(line, end='')
