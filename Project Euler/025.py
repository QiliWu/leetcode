def fabonacci(n):
    if n == 1 or n == 2:
        return 1
    else:
        return fabonacci(n-1)+fabonacci(n-2)
        
m = 1
while log10(fabonacci(m)) < 1000:
    m = m + 1
print(m)