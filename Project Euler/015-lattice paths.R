#Lattice paths
#Problem 15

#Starting in the top left corner of a 2×2 grid, and only being able to #move to the right and down, there are exactly 6 routes to the bottom right corner.

#How many such routes are there through a 20×20 grid?
  



n * n grid
routes <- function(n){
  return(choose(2*n, n))
}

routes(2)
routes(3)
routes(20)