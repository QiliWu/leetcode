#Factorial digit sum
#Problem 20

#n! means n × (n − 1) × ... × 3 × 2 × 1

#For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

#Find the sum of the digits in the number 100!
  

#because 100! is a very large number, we can't get the right num via factorial(100), we can use factorialMpfr

# right method
num <- factorialMpfr(100)
r <- 0
while(num > 0){
  r <- r + num %% 10
  num <-num %/% 10
}
print(r)


# do not know how to extract the num in mpfr


#wrong code
num <- 1
for(n in 2:100){
  num <- num * n
}
r <- 0
while(num > 0){
  r <- r + num %% 10
  num <-num %/% 10
}
print(r)