"""
Truncatable primes
Problem 37

The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

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

def target_num(n):
    if n < 10:
        return False
    if n >= 10:
        if isprime(n):
            s = str(n)
            l = len(s)
            for i in range(1, l):
                left = int(s[i:])
                right = int(s[:-i])
                #print(left, right)
                if not (isprime(left) and isprime(right)):
                    return False
            return True

num = 10
count = 0
nums = []
while count < 11:
    if target_num(num):
        count = count + 1
        nums.append(num)
    num = num + 1
print(sum(nums))
print(nums)
        