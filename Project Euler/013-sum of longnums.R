#Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
con <- file('/home/wuqili/R practise/Project Euler/013.txt')
longstrs <- readLines(con)
split_longstrs <- strsplit(longstrs, '')
l <- unlist(split_longstrs)
data <- array(l, c(50, 100))
adding <- 0
result <- list()
for(i in 50:1){
  sum <- sum(as.integer(a[i,]))
  result[[toString(i)]] <- (sum + adding) %% 10
  adding <- (sum + adding) %/% 10
}
result[[toString('0')]] <- adding
rev_result <- unlist(rev(result))
print(rev_result)