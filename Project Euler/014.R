
len <- numeric(250000)
nums <- seq.int(999999,500001, -2)
names(len) <- nums

for(j in names(len)){
  i <- as.integer(j)
  to_rm <- c(i, 3*i+1)
  i <- 3 * i + 1
  while(i != 1){
    if(i %% 2 == 0){
      i <- i/2
      to_rm <- c(to_rm, i)
    }else{
      i <- 3 * i + 1
      to_rm <- c(to_rm, i)
    }
  }
  len[j] <- length(to_rm)
  len <- len[!names(len) %in% to_rm]
}

print(sort(len))

l <- list()
for(i in 2:1000000){
  j <- toString(i)
  count <- 1
  while(i != 1){
    if(i %% 2 == 0){
      i <- i/2
    }else{
      i <- 3 * i + 1
    }
    count <- count + 1
  }
  l[[j]] <- count
}
print(max(unlist(l)))


l <- list()
for(i in 500001:1000000){
  j <- toString(i)
  before_i <- (i-1)/3
  if(before_i %% 2 != 1){
    count <- 1
    while(i != 1){
      if(i %% 2 == 0){
        i <- i/2
      }else{
        i <- 3 * i + 1
      }
      count <- count + 1
    }
    l[[j]] <- count
  }
}
print(max(unlist(l)))
