#Reciprocal cycles
#Problem 26

#A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
  
1/2	= 	0.5
1/3	= 	0.(3)
1/4	= 	0.25
1/5	= 	0.2
1/6	= 	0.1(6)
1/7	= 	0.(142857)
1/8	= 	0.125
1/9	= 	0.(1)
1/10	= 	0.1 

#Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

#Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.




# find all the prime number in 1:1000, only prime numbers except (2,5) could have count_cycles
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

nums <- 1:1000
primes <- nums[sapply(nums, isprime)]

# the cycle depends on the modnum using Numerator %% denominator, when the same modnum appears, it means the start of another cycle. 
CountCycle <- function(num){
  mod <- c()
  modnum <- 1
  index <- 1
  while(modnum != 0 & !(modnum %in% mod)){
    mod[index] <- modnum
    modnum <- (modnum * 10) %% num
    index <- index + 1
    if(modnum == 0){
      return(0)
    }
  }
  i <- which(mod == modnum)
  return(index-i)
}

cycle_count <- sapply(primes, CountCycle)
max_cycle <- max(cycle_count)
result <- primes[which(cycle_count==max_cycle)]
print(result)