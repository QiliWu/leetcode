def fifth_power(n):
    result = 0
    while n != 0:
        m = n % 10
        result = result + m**5
    return result
    
num = 2
p = 0
while num <= (len(str(num)) * (9**5)):
    if fifth_power(num) == num:
        print(num)
        p = p + num
    num = num + 1
print(p)