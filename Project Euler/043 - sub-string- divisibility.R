#Sub-string divisibility
#Problem 43

#The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.

#Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:
  
d2d3d4=406 is divisible by 2
d3d4d5=063 is divisible by 3
d4d5d6=635 is divisible by 5
d5d6d7=357 is divisible by 7
d6d7d8=572 is divisible by 11
d7d8d9=728 is divisible by 13
d8d9d10=289 is divisible by 17

#Find the sum of all 0 to 9 pandigital numbers with this property.


satisfied <- function(s){
  if(substr(s, 1, 1) == '0'){
    return(FALSE)
  }else{
    if(as.integer(substr(s, 2, 4)) %% 2 == 0 & as.integer(substr(s, 3, 5)) %% 3 == 0 & as.integer(substr(s, 4, 6)) %% 5 == 0 & as.integer(substr(s, 5, 7)) %% 7 == 0 & as.integer(substr(s, 6, 8)) %% 11 == 0 & as.integer(substr(s, 7, 9)) %% 13 == 0 & as.integer(substr(s, 8, 10)) %% 17 == 0){
      return(TRUE)
    }else{
      return(FALSE)
    }
  }
}

result <- 0
#factorialMpfr(10) = 3628800
for(i in 1:3628800){
  digits = as.character(c(0:9))
  set.seed(i)
  new_order <- sample(digits, 10, replace = FALSE)
  num <- paste(new_order, collapse = '')
  #print(c(num, i))
  if(satisfied(num)){
    print(c(num, i))
    result <- result + as.numeric(num)
  }
}
# got two same numbers:("1430952867" "i=1928008" ) and ("1430952867" "i = 3211200" )
print(result)