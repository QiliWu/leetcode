#Maximum path sum I
#Problem 18

#By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

   3
  7 4
 2 4 6
8 5 9 3

#That is, 3 + 7 + 4 + 9 = 23.

#Find the maximum total from top to bottom of the triangle below:



con <- file('/home/wuqili/R practise/Project Euler/018.csv')
triangle <- read.csv(con, header = FALSE)

maxpathsum <- function(grid){
  l <- length(grid)-1
  for(i in l:1){
    for(j in 1:i){
      grid[i,j] <- max(grid[i, j]+grid[i+1, j], grid[i,j]+grid[i+1,j+1])
    }
  }
  return(grid[1,1])
}

maxpathsum(triangle)
