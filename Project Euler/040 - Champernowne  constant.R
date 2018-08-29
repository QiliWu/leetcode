#Champernowne's constant
Problem 40

#An irrational decimal fraction is created by concatenating the positive integers:
  
  0.123456789101112131415161718192021...

#It can be seen that the 12th digit of the fractional part is 1.

#If dn represents the nth digit of the fractional part, find the value of the following expression.

#d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000


#1-digits_num_length: length(1:9)*1, 2_digits_num_length: length(10:99)*2, 3_digits_num_length: length(100:999)*3, n_digits_num_length: 9*10**(n-1)*n, 
int_length <- function(n){
  if(n == 0){
    return(0)
  }else{
    s <- 1:n
    l <- sum((10**(s-1))*9*s)
  }
  return(l)
}

d_n <- function(n){
  i = 1
  while(int_length(i) < n){
    i = i + 1
  }
  j <- n - int_length(i-1)

  r <- (10**(i-1)):(10**i-1)
  if(j %% i == 0){
    num <- j %/% i
    pos <- i
  }
  else{
    num <- j %/% i + 1
    pos <- j %% i
  }
  m <- r[num]
  digit <- substr(toString(m), pos, pos)
  print(c(i, num, m, pos))
  return(as.integer(digit))
}

s <- c(d_n(1), d_n(10), d_n(100), d_n(1000), d_n(10000), d_n(100000), d_n(1000000))
prod(s)