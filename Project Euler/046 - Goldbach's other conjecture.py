# -*- coding: utf-8 -*-
"""
Goldbach's other conjecture
Problem 46

It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.

9 = 7 + 2×12
15 = 7 + 2×22
21 = 3 + 2×32
25 = 7 + 2×32
27 = 19 + 2×22
33 = 31 + 2×12

It turns out that the conjecture was false.

What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

"""

from math import sqrt 
def isprime(x):
    if x <= 1:
        return False
    if x == 2:
        return True
    else:
        for i in range(2, int(sqrt(x)+1)):
            if x % i == 0:
                return False
    return True

primes = [2]
    
n = 3
while True:
    if isprime(n):
        primes.append(n)
    else:
        for i in primes:
            m = sqrt((n-i)/2)
            if m % 1 == 0:
                print(n, i, m)
                break
        else:
            print(n)
            break
    n = n + 2
    #print(n)




