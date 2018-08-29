#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

isprime <- function(x){
  if(x == 1){
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

sum_primes <- function(n){
  i = 1
  index = 1
  primes <- list()
  primes[1] <- 2
  while((2*i+1) < n){
    p <- 2 * i + 1
    if(isprime(p)){
      index <- index + 1
      primes[index] <- p
    }
    i <- i + 1
  }
  sum(unlist(primes))
}

sum_primes <- function(n){
  primes <-2:n
  for(i in primes){
    if(i <= as.integer(sqrt(n))){
      if(isprime(i)){
        #primes <- primes[-match(seq.int(2*i, n, i), primes, nomatch = 0)]
        primes <- primes[!primes %in% seq.int(i * i, n, i)]
        #print(primes)
      }
    }
  }
  return(sum(as.numeric(primes)))
}
timestart <- Sys.time()
sum_primes(2000000)
timestop <- Sys.time()
(t <- timestop - timestart)

sum_primes <- function(n){
  i = 2
  index = 0
  l <- !logical(n)
  l[1] <- FALSE
  primes <- list()
  while(i < n){
    if(l[i] == TRUE){
      index <- index + 1
      primes[[index]] <- i
      #print(primes)
      for(j in 1:index){
        if(i * primes[[j]] < n){
          #print(j)
          l[i * primes[[j]]] <- FALSE
          if(i %% primes[[j]] == 0){
           break
          }
        }
      }
    }
    i <- i + 1
  }
  print(primes)
  return(sum(unlist(primes)))
}


sum_primes <- function(n){
   i = 1
   l <- !logical(n)
   primes <- list()
   index = 1
   primes[1] <- 2
   while(2*i+1 < n){
     p <- 2 * i + 1
     if(l[p] == TRUE){
       index <- index+1
       primes[index] <- p
       if(p <= n/2){
         m <- n %/% (p)
         for(j in 1:m/2){
           l[(2*i+1) * (2*j+1)] <- FALSE
         }
       }
     }
     i <- i + 1
   }
   #print(primes)
   return(sum(unlist(primes)))
}

