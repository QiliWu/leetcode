#Quadratic primes
#Problem 27

#Euler discovered the remarkable quadratic formula:
  
#  n2+n+41

#It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39
#. However, when n=40,40^2+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,41^2+41+41

#is clearly divisible by 41.

#The incredible formula n^2−79n+1601
#was discovered, which produces 80 primes for the consecutive values 0≤n≤79

#. The product of the coefficients, −79 and 1601, is −126479.

#Considering quadratics of the form:
  
#  n^2+an+b

#, where |a|<1000 and |b|≤1000

#where |n|
#  is the modulus/absolute value of n
#e.g. |11|=11 and |−4|=4

#Find the product of the coefficients, a
#and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n=0.


TOO SLOW

# find all the prime number in 1:1000, only prime numbers except (2,5) could have count_cycles
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

nums <- 1:1000
primes <- nums[sapply(nums, isprime)]
A <- -999:999
B <- primes
quadratic <- numeric()
for(a in A){
  for(b in B){
    n <- 0
    m <- b
    while(isprime(m)){
      n <- n + 1
      m <- n^2 + a * n + b
    }
    quadratic <- c(quadratic, a, b, n)
  }
}
q <- matrix(quadratic, ncol = 3)
colnames(q) <- c('a', 'b', 'c')
