# -*- coding: utf-8 -*-
"""
Pandigital multiples
Problem 38

Take the number 192 and multiply it by each of 1, 2, and 3:

    192 × 1 = 192
    192 × 2 = 384
    192 × 3 = 576

By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?

"""


"""
 Since we're given 918273645, we know the max is either that or larger and 
 therefore must start with a 9. Since that's the result of 9, I start my search 
 at 91 (90 would also be less than 91827...) and only evaluate numbers 
 beginning with 9. Also, since it's limited to only being 9 digits long, 
 the longest number to start with would be 4 digits and the largest 4-digit 
 number possible would be 9876 (no repeats like 9999).
 Probably could've made that even smaller, but this works quick enough for me.
"""

def is_pandigital(n):
    if sorted(str(n)) == [str(x) for x in range(1, 10)]:
        return True
    else:
        return False
        


largest = 918273645
for i in range(91,9877):
    s = str(i)
    if s[0] == '9' and len(s) == len(set(s)): 
        con_prod = ''
        for x in range(1, 3):
            prod = i * x
            con_prod = con_prod + str(prod)
            if is_pandigital(con_prod):
                if con_prod > largest:
                    largest = con_prod
print largest