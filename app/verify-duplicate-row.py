
f = open('../data/gene-data', 'r')
s = {} 
c = 0
for line in f:
    c += 1
    print(line, c)
#    c += 1
#    t = line.split(',')
#    tt = t[0].strip()
#    if s.get(tt, None) != None:
#        s[tt] += 1
#        break
#    else:
#        s[tt] = 1

for k, v in s.items():
    print(k, v)
for k, v in s.items():
    if v!=1:
        print(k,v)
print(c)
f.close()
