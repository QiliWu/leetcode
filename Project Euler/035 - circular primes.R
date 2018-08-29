#Circular primes
#Problem 35

#The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

#How many circular primes are there below one million?

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


is_circular_primes <- function(n){
  if(n %in% c(2, 3, 5, 7)){
    return(list(TRUE, n))
  }else{
    if(!isprime(n)){
      return(FALSE)
    }else{
      digits <- as.integer(unlist(strsplit(toString(n), '')))
      bad_nums <- c(0, 2, 4, 5, 6, 8)
      if(any(bad_nums %in% digits)){
        return(FALSE)
      }else{
        all_nums <- n
        len <- length(digits)
        for(i in 1:(len-1)){
          digits <- c(digits[len], digits[1:(len-1)])
          pasted <- paste(as.character(digits), collapse = '')
          new_num <- as.integer(pasted)
          if(!isprime(new_num)){
            return(FALSE)
          }else{
            all_nums <- c(all_nums, new_num)
          }
        }
        return(list(TRUE, all_nums))
      }
    }
  }
}

count = 0
passed = numeric()
for(i in 1:1000000){
  if(!(i %in% passed)){
    if(is_circular_primes(i)[[1]]){
      j <- is_circular_primes(i)[[2]]
      passed <- c(passed, j)
    }
  }
}
print(length(unique))

  