# -*- coding: utf-8 -*-
"""
Pentagon numbers
Problem 44

Pentagonal numbers are generated by the formula, Pn=n(3n−1)/2. The first ten pentagonal numbers are:

1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...

It can be seen that P4 + P7 = 22 + 70 = 92 = P8. However, their difference, 70 − 22 = 48, is not pentagonal.

Find the pair of pentagonal numbers, Pj and Pk, for which their sum and difference are pentagonal and D = |Pk − Pj| is minimised; what is the value of D?

"""
#P(n+1) - Pn = 3n+1
#Answer from website

pset = set()
D = {}

n = 0
p = 0
while True:
    p = p + 3*n + 1
    if D.has_key(p):
        print(D[p])
        break
    for old in pset:
        diff = p - old
        if diff in pset:
            D[p+old] = diff
            print D
    
    pset.add(p)
    n = n + 1
    