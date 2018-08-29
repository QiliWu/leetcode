#In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

#The product of these numbers is 26 × 63 × 78 × 14 = 1788696.

#What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

con <- file('/home/wuqili/R practise/Project Euler/011.csv')
g <- read.csv(con, header = FALSE)
result <- 0
for(i in 1:20){
  for(j in 1:20){
    if(i <= 17){
      if(j <= 3){
        result <- max(result, prod(g[i, j:j+3], na.rm = TRUE), prod(g[i:i+3, j], na.rm = TRUE), prod(g[i, j], g[i+1, j+1], g[i+2, j+2], g[i+3, j+3], na.rm = TRUE))
      }
      if(j > 3){
        result <- max(result, prod(g[i, j:j+3], na.rm = TRUE), prod(g[i:i+3, j], na.rm = TRUE), prod(g[i, j], g[i+1, j+1], g[i+2, j+2], g[i+3, j+3], na.rm = TRUE), prod(g[i, j], g[i+1, j-1], g[i+2, j-2], g[i+3, j-3], na.rm = TRUE))
      }
    }
  }
}
print(result)