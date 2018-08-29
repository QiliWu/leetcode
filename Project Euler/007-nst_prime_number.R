#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?
timestart <- Sys.time()  
isprimenumber <- function(x){
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
#method one
timestart <- Sys.time()  
nst_prime_number <- function(n){
  i = 0
  x = 0
  while(i<n){
    x = x + 1
    if(isprimenumber(x)){
      i <- i + 1
    }
  }
  return(c('i'= i, 'x' = x))
}
nst_prime_number(10001)
timestop <- Sys.time()
timecost<- timestop - timestart
timecost

#method two
timestart <- Sys.time()  
nst_prime_number <- function(prime, num){
  i <- 7
  gab <- 2
  while(n > 3){
    flag <- TRUE
    for(x in prime){
      if(x * x > i){
        break
      }
      if(i %% x == 0){
        flag <- FALSE
        break
      }
    }
    if(flag){
      l <- length(prime) +1 
      prime[[toString(l)]] <- i
      if(l > num){
        break
      }
    }
    gab <- 6-gab
    i <- i + gab
  }
  return(prime[[num]])
}
nst_prime_number(list('1'= 2, '2' = 3, '3' = 5), 10001)
timestop <- Sys.time()
timecost<- timestop - timestart
timecost

#method three


