#A palindromic number reads the same both ways. The largest palindrome made from the #product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

ispalindromic <- function(x){
  y <- as.character(x)
  z <- unlist(strsplit(y,''))
  return(identical(z, rev(z)))
}

ispalindromic(99)
ispalindromic(9008)
ispalindromic(454)

#method one
a <- matrix(100:999, nrow = 900, ncol = 1)
b <- matrix(100:999, nrow = 1, ncol = 900)
m <- a %*% b
palindromic <- unique(m[sapply(m, ispalindromic)])
max_p <- max(palindromic)
print(which(m == map_p))

#method two
l <- list()
result <- 0
for(i in 999:100){
  for (j in i:100){
    if(ispalindromic(i * j) & (i * j) > result){
      result <- i * j
      l[[toString(i * j)]] <- c(i, j)
    }
  }
}

for(i in 999:100){
  if(ispalindromic(i^2)){
    message(i^2, '=', i, '*', i)
    break
  }
  if(ispalindromic(i*(i-1))){
    message(i*(i-1), '=', i, '*', i-1)
    break
  }else{
    next
  }
}