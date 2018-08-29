"""
Pandigital prime
Problem 41

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?

"""

#analysis: 9-digit and 8-digit numbers all have a factor --3, they will not be prime. So we start with checking 7-digit nums.
from math import sqrt

def is_pandigital(n):
    if sorted(str(n)) == [str(x) for x in range(1, len(str(n))+1)]:
        return True
    else:
        return False
        
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
        

for i in range(7654321, 1234568, -1):
    if is_pandigital(i) and isprime(i):
        print(i)
        break