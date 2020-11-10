#!/usr/bin/python

import sys
from decimal import *
def avgstr(strs):
    if len(strs) == 1:
        return strs[0]

    n = len(strs)
    m = strs[0].count(',')
    result = strs[0][0:strs[0].index(',')]
    vec = [[] for i in range(n)]
    for i in range(n):
        t = strs[i].split(',')
        for j in range(1,len(t)):
            vec[i].append(Decimal(t[j]))
    ret = []
    for j in range(m):
        count = 0
        for i in range(n):
            count += vec[i][j]
        ret.append(count/n)
    for c in ret:
        result += ","+str(c)
    return result

f = open(sys.argv[1], 'r')
c = 0
smap = {}
for line in f:
    line = line.strip()
    if c == 0:
        c += 1
        print(line)
        continue
    else:
        gene = line[0:line.index(',')]
        if smap.get(gene,None) == None:
            smap[gene] = [line]
        else:
            smap[gene].append(line)
for k,v in smap.items():
    print(avgstr(smap[k]))
