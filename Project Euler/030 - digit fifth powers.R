#Digit fifth powers
#Problem 30 

#Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
  
  1634 = 1**4 + 6**4 + 3**4 + 4**4
  8208 = 8**4 + 2**4 + 0**4 + 8**4
  9474 = 9**4 + 4**4 + 7**4 + 4**4
  
#  As 1 = 14 is not a sum it is not included.
  
#  The sum of these numbers is 1634 + 8208 + 9474 = 19316.
 
假设数N = a1a2...an，其中a1 > 0。求满足以下条件的数N：10^(n-1)* a1 + 10^(n-2)*a2+..+an = N = a1^p + a2^p + ... + an^p
 a1>0, p>0, N>1 
  左边表达式值的范围为：[10^(n-1), 10^n - 1]
  
  右边表达式值的范围为：[1, n * 9^p]
  
  可得不等式：10^(n-1) <= n * 9^p < n * 10^p
          --> f(n) = 10^(n-1) - n * 10^p < 0
          --> n <= p+1
  
  则搜索范围缩小为 1 < N < (p+1) * 9^p
   
#  Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
fifth_power <- function(n){
  result <- 0
  while(n != 0){
    result <- (n %% 10)^5 + result
    n <- n %/% 10
  }
  return(result)
}
   
num <- 2 
p <- numeric()
# having six numbers in max
while(num <= 6*(9^5)){
  if(fifth_power(num) == num){
    p <- c(p, num)
  }
  num <- num + 1
}
print(p)

> print(p)
[1]  4150  4151 54748
> sum(p)
[1] 63049