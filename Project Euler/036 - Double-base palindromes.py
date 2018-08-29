"""
Double-base palindromes
Problem 36

The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)

"""



def is_palindromes(s):
    l = len(s)
    if l == 1:
        return True
    else:
        for i in range(l//2):
            if s[i] != s[l-1-i]:
                return False
        return True
    
def is_dbase_palindromes(n):
    str_n = str(n)
    if is_palindromes(str_n):
        bi_n = bin(n)[2:]
        if is_palindromes(bi_n):
            return True
    return False
    
def sum_dbase_palindromes(n):
    result = 0
    r_list = []
    for i in range(n):
        if is_dbase_palindromes(i):
            result = result + i
            r_list.append(i)
    return(result, '\n', r_list)
            
            
        
    