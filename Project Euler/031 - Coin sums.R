#Coin sums
#Problem 31

#In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
  
#  1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

#It is possible to make £2 in the following way:
  
#  1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

#How many different ways can £2 be made using any number of coins?
  

n_1 <- 1
n_2 <- 2
n_5 <- 5
n_10 <- 10
n_20 <- 20
n_50 <- 50
n_100 <- 100
n_200 <- 200

count <- 1 # (just one n_200)
for(a_100 in 0:2){
  b_100 <- a_100 * n_100
  c_50 <- (200-b_100) %/% 50
  for(a_50 in 0:c_50){
    b_50 <- a_50 * n_50
    c_20 <- (200 - b_100 - b_50) %/% 20
    for(a_20 in 0:c_20){
      b_20 <- a_20 * n_20
      c_10 <- (200 - b_100 - b_50 - b_20) %/% 10
      for(a_10 in 0:c_10){
        b_10 <- a_10 * n_10
        c_5 <- (200 - b_100 - b_50 - b_20 - b_10) %/% 5
        for(a_5 in 0:c_5){
          b_5 <- a_5 * n_5
          c_2 <- (200 - b_100 - b_50 - b_20 - b_10 - b_5) %/% 2
          for(a_2 in 0:c_2){
            b_2 <- a_2 * n_2
            c_1 <- (200 - b_100 - b_50 - b_20 - b_10 - b_5 - b_2) 
            if(c_1 >= 0){
              count <- count + 1
            }
          }
        }
      }
    }
  }
}

print(count)