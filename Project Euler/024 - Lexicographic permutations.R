#Lexicographic permutations
#Problem 24

#A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
  
  012   021   102   120   201   210

#What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
  

#idea
total_10 <- factorial(10)
each_num_ahead_10 <- total_10 / 10  
#362880 numbers begin with 0, so do other numbers
n_10 <- 1000000 %/% each_num_ahead_10
# since n = 2, indicating that the millionth lexicographic permutation is start with 2
m_10 <- 1000000 %% each_num_ahead_10  # m = 274240
# so the target number is start with 2, the rest is the 274240th lexicographic permutation in (0, 1, 3, 4, 5, 6, 7, 8, 9)
total_9 <- factorial(9)
each_num_ahead_9 <- total_9/9   #40320

digits <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
result <- numeric()
nth_lexi <- function(n){
  while(length(digits) != 0){
    l <- length(digits)
    f <- factorial(l-1)
    if(n %% f == 0){
      num <- n %/% f 
      result <- c(result, digits[num])
      digits <- digits[-num]
      result <- c(result, sort(digits, decreasing = TRUE))
      digits <- numeric()
    }else{
      num <- n %/% f + 1
      n <- n %% f
      result <- c(result, digits[num])
      digits <- digits[-num]
    }
  }
  return(result)
}
