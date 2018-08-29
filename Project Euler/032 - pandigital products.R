#Pandigital products
#Problem 32

#We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

#The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

#Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
#HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.



digits <- 1:9
index <- 1
result <- numeric()
l <- list()

#(4, 1, 4)
for(a_1 in digits){
  for(a_2 in digits[-a_1]){
    for(a_3 in digits[!(digits %in% c(a_1, a_2))]){
      for(a_4 in digits[!(digits %in% c(a_1, a_2, a_3))]){
        for(a_5 in digits[!(digits %in% c(a_1, a_2, a_3, a_4))]){
          b_1 <- a_1 * 10^3 + a_2 * 10^2 + a_3 * 10 + a_4
          b_2 <- a_5
          n <- b_1 * b_2
          c_1 <- a_1 * 10^2 + a_2 * 10 + a_3
          c_2 <- a_4 *10 + a_5
          m <- c_1 * c_2
          if(n < 10000 | m < 10000){
            rest <- digits[!(digits %in% c(a_1, a_2, a_3, a_4, a_5))]
            for(r_1 in rest){
              for(r_2 in rest[!(rest %in% c(r_1))]){
                for(r_3 in rest[!(rest %in% c(r_1, r_2))]){
                  r <- r_1 * 1000 + r_2 * 100 + r_3 * 10 + rest[!(rest %in% c(r_1, r_2, r_3))]
                  if(n == r){
                    result <- c(result, n)
                    l[index] <- list(c(b_1, b_2, n))
                    index <- index + 1
                  }
                  if(m == r){
                    result <- c(result, m)
                    l[index] <- list(c(c_1, c_2, m))
                    index <- index + 1
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
print(sum(unique(result)))