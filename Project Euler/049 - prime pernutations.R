#Prime permutations
#Problem 49

#The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

#There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.

#What 12-digit number do you form by concatenating the three terms in this sequence?
  
  

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


for(a in 1:9){
  for(b in 1:9){
    for(c in 1:9){
      for(d in c(1,3,7,9)){
        if(a != b | a != c | b != c){
          n_1 <- a*1000+b*100+c*10+d
          if(isprime(n_1)){
            n_2 <- b*1000+c*100+a*10+d
            if(isprime(n_2)){
              n_3 <- c*1000+a*100+b*10+d
              if((n_3-n_2 == n_2 - n_1) & isprime(n_3)){
                print(sort(c(n_1, n_2, n_3)))
              }
            }
          }
        }
      }
    }
  }
}