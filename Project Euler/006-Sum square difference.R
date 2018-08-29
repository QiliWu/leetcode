
#The sum of the squares of the first ten natural numbers is,
#1^2 + 2^2 + ... + 10^2 = 385

#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)^2 = 55^2 = 3025

#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

Sum_square_diff<- function(n){
  sum <- sum((1:n)**2)
  square <- (sum(1:n))**2
  return(c('sum_square' = sum, 'square_sum' = square, 'sum_square_diff' = square-sum))
}
