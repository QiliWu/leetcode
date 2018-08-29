# -*- coding: utf-8 -*-
"""
Self powers
Problem 48

The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

"""

#取模是关键
result = 0
for i in range(1,1001):
    result = (result + i**i)%10000000000
print result
     