# -*- coding: utf-8 -*-
"""
Consecutive prime sum
Problem 50

The prime 41, can be written as the sum of six consecutive primes:
41 = 2 + 3 + 5 + 7 + 11 + 13

This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?

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
    
n =3
prime_sum = 2
prime_list = [2]
count = 1
while True:
    if isprime(n):
        if prime_sum + n >= 1000000:
            break
        else:
            prime_sum = prime_sum + n
            prime_list.append(prime_sum)
            count = count+1
            
    n = n + 2
#连续的质数，不一定要从2开始, 只要连续的长度最长
def GetConsecutivePrimeSum():
    for span in range(len(prime_list)-1, 0, -1):
        for start_pos in range(len(prime_list)-span-1, 1, -1):
            result = prime_list[start_pos + span] - prime_list[start_pos]
            if isprime(result):
                yield(result)
                
answer = GetConsecutivePrimeSum()
print(answer)
print(answer.next())