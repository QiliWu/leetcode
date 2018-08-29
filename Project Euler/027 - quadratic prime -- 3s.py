# -*- coding: utf-8 -*-
"""
Quadratic primes
Problem 27

Euler discovered the remarkable quadratic formula:

n2+n+41

It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39
. However, when n=40,402+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,412+41+41

is clearly divisible by 41.

The incredible formula n2−79n+1601
was discovered, which produces 80 primes for the consecutive values 0≤n≤79

. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

    n2+an+b

, where |a|<1000 and |b|≤1000

where |n|
is the modulus/absolute value of n
e.g. |11|=11 and |−4|=4

Find the product of the coefficients, a
and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n=0.
"""



from math import sqrt
from datetime import datetime
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

start = datetime.now()
max_n = 0

for a in range(-999,999):
    for b in range(1, 1000):
        n = 0
        m = b
        while isprime(m):
            n = n + 1
            m = n*n + a*n + b
        if n > max_n:
            max_n = n
            max_a = a
            max_b = b
print('a = ', max_a, ', b = ', max_b, ', n = ', max_n, ', a*b = ', max_a * max_b)
end = datetime.now()
time_cost = end-start