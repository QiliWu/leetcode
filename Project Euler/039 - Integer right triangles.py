# -*- coding: utf-8 -*-
"""
Integer right triangles
Problem 39

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?

"""

max_n = 3
result = {}
for p in range(121, 1001):
    count = 0
    for a in range(1, p//3):
        for b in range(a, p//2):
            if a**2 + b**2 == (p-a-b)**2:
                count = count + 1
                #print(a, b, p-a-b)
    if count > max_n:
         max_n = count
         result[max_n] = p
print(result[max(result)])
