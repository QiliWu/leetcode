#Digit cancelling fractions
#Problem 33

#The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

#We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

#There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

#If the product of these four fractions is given in its lowest common terms, find the value of the denominator.



N <- numeric()
M <- numeric()
for(a in 1:9){
  for(b in 1:9){
    for(c in 1:9){
      if(a != c){
        n <- a*10 + b
        m <- b*10 + c
        if(n/m == a/c){
          N <- c(N, n)
          M <- c(M, m)
        }
      }
    }
  }
}
result <- prod(N)/prod(M) # 1/100, so the denominator is 100