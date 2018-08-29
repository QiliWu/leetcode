#Distinct primes factors
#Problem 47

#The first two consecutive numbers to have two distinct prime factors are:
  
#14 = 2 × 7
#15 = 3 × 5

#The first three consecutive numbers to have three distinct prime factors are:
  
#644 = 2² × 7 × 23
#645 = 3 × 5 × 43
#646 = 2 × 17 × 19.

#Find the first four consecutive integers to have four distinct prime factors each. What is the first of these numbers?
  


isprime <- function(x){
  if(x == 1){
    return(FALSE)
  }else{
    y <- as.integer(sqrt(x)) + 1
    for(i in 2:y){
      if(x %% i == 0 & x != 2){
        return(FALSE)
      }
    }
    return(TRUE)
  }
}
prime_factors <- function(n){
  if(n < 4){
    return(1)
  }else{
    m <- as.integer(sqrt(n))+1
    primes <- numeric()
    count <- 0
    for(i in 2:m){
      if(n %% i == 0){
        if(isprime(i)){
          primes <- c(primes, i)
          count <- count + 1
        }
        if(isprime(n/i)){
          primes <- c(primes, n/i)
          count <- count + 1
        }
      }
    }
  }
  #print(primes)
  return(count)
}

num <- 647
count <- 0
while(count < 4){
  r <- sapply(num:(num+3), prime_factors)
  if(identical(r, c(4,4,4,4))){
    count <-  4
    print(num)
  }
  num <- num + 4
}