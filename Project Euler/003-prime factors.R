#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?


# note: when return is inside a loop, the loop will finish as it reach the return step.

largest_prime <- function(num){
  while(TRUE){
    m <- sqrt(num) %/% 1
    n = 2
    if(n > m){
      return(n)
    }
    while(n <= m){
      if (num %% n == 0){
        print(c(n, num/n))
        num <- num/n
        n <- num + 1
      }else {
        n <- n+1
        if(n > m ){
          return(num)
          
        }
      }
    }
  }
}


largest_prime(600851475143)
largest_prime(90)
largest_prime(13195)
largest_prime(10000)
largest_prime(128)




#WRONG CODE
> largest_prime <- function(num){
  +   factors <- list()
  +   i <- TRUE
  +   while(i == TRUE){
    +     m <- sqrt(num) %/% 1
    +     while(m != 1){
      +       if(num %% m == 0){
        +         num <- num / m  #THE LARGEST PRIME FACTOR IS IN m, NOT num/m
        +         result <- num
        +         print(c(m, num))
        +         m <- 1
        +       }else{
          +       m <- m-1
          +       if(m == 1){
            +         i <- FALSE
            +       }
          +     }
      +   }
    +   }
  +   return(result)
  + }