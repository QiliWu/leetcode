# -*- coding: utf-8 -*-
"""Longest Collatz sequence
Problem 14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
"""

result = {}
to_rm = set()
for i in range(1000000, 2, -1):
    if i not in to_rm:
       j = i
       count = 1
       to_rm.add(i)
       while i != 1:
           if i % 2 == 0:
               i = i/2
               to_rm.add(i) 
           else:
               i = 3 * i + 1
               to_rm.add(i)
           count = count + 1
       result[count] = j
       
return result[max(result.keys())]

    