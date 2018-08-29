"""Sub-string divisibility
Problem 43

The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.

Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:

    d2d3d4=406 is divisible by 2
    d3d4d5=063 is divisible by 3
    d4d5d6=635 is divisible by 5
    d5d6d7=357 is divisible by 7
    d6d7d8=572 is divisible by 11
    d7d8d9=728 is divisible by 13
    d8d9d10=289 is divisible by 17

Find the sum of all 0 to 9 pandigital numbers with this property.
"""

def is_satisfied(digit):
    ''' Check if digit satisfied the conditions '''
    num = 0
    d = 1
    div = [2, 3, 5, 7, 11, 13, 17]

    for d in range(0,7):
        num = digit[1+d]*100 + digit[2+d]*10 + digit[3+d]
        if num % div[d] != 0:
            return False
    return True

result = 0
def perm(digit,length):
    ''' digit[0]~digit[length-1] already arranged '''
    if length >= 10:
        # all arranged, we get one permutation
        if is_satisfied(digit):
            print digit
            global  result
            result += int(''.join([str(i) for i in digit])) #list to int
    else:
        for k in range(length,10):
            #swap k and length
            tmp = digit[length]
            digit[length] = digit[k]
            digit[k] = tmp

            perm(digit,length+1)

            #swap k and length back
            digit[k] = digit[length]
            digit[length] = tmp

if __name__=='__main__':
    digit=[0,1,2,3,4,5,6,7,8,9]
    perm(digit,0)
    print result