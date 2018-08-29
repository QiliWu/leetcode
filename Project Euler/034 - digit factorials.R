#Digit factorials
#Problem 34

#145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

#Find the sum of all numbers which are equal to the sum of the factorial of their digits.

#Note: as 1! = 1 and 2! = 2 are not sums they are not included.


sum_factorials <- function(n){
  splited <- unlist(strsplit(toString(n), ''))
  result <- sum(factorial(as.numeric(splited)))
  return(result)
}


假设数N = a1a2...an，其中a1 > 0。求满足以下条件的数N：10^(n-1)* a1 + 10^(n-2)*a2+..+an = N = a1! + a2! + ... + an!
a1>0, N>2 
左边表达式值的范围为：[10^(n-1), 10^n - 1]

右边表达式值的范围为：[1, n * 9!]

可得不等式：10^(n-1) <= n * 9! = 362880 *n
--> n<= 7
    n*9! = 2540160

result <- 0
nums <- numeric()
for(num in 3:2540160){
  if(sum_factorials(num) == num){
    print(num)
    result <- result + num
    nums <- c(nums, num)
  }
}

print(result)