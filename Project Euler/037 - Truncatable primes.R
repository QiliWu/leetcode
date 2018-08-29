#Truncatable primes
#Problem 37

#The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

#Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

#NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.


isprime <- function(x){
  if(x <= 1){
    return(FALSE)
  }
  if(x == 2){
    return(TRUE)
  }else{
    for(i in 2:(as.integer(sqrt(x))+1)){
      if(x %% i == 0){
        return(FALSE)
      }
    }
  }
  return(TRUE)
}

target_num <- function(n){
  if(n < 10){
    return(FALSE)
  }
  if(n >= 10){
    if(isprime(n)){
      s <- toString(n)
      l <- nchar(s)
      for(i in 2:l){
        left <- as.integer(substr(s, i, l))
        right <- as.integer(substr(s, 1, i-1))
        if(!(isprime(left) & isprime(right))){
          return(FALSE)
        }
      }
      return(TRUE)
    }
    return(FALSE)
  }
}

j <- 10
count <- 0
result <- numeric()
while(count < 11){
  if(target_num(j)){
    count <- count + 1
    result <- c(result, j)
  }
  j <- j + 1
}
print(result)
print(sum(result))