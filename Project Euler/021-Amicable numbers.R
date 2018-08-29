#Amicable numbers
#Problem 21

#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

#Evaluate the sum of all the amicable numbers under 10000.


divisors_sum <- function(n){
  m <- as.integer(sqrt(n))
  sum <- 1
  if(m >= 2){
    for(i in 2:m){
      if(n %% i == 0){
        sum <- sum + i + n/i
      }
    }
  }
  if(m == sqrt(n)){
    return(sum - m)
  }else{
    return(sum)
  }
}

amicable <- numeric()
for(n in 2:10000){
  if(n %in% amicable){
    next
  }else{
    m <- divisors_sum(n)
    # set m!= n, so 6 and 8128 is not satisfy.
    if(divisors_sum(m) == n & m != n){
        amicable <- c(amicable, m, n)
    }
  }
}
print(sum(amicable))