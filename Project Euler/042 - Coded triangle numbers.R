#Coded triangle numbers
#Problem 42

#The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:
  
#  1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

#By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

#Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?


is_triangle_num <- function(n){
  if(n>0){
    m <- as.integer(sqrt(2 * n))
    if(m * (m+1) == 2*n){
      return(TRUE)
    }
  }
  return(FALSE)
}

is_triangle_word <- function(word){
  value <- 1:26
  names(value) <- LETTERS
  splited_word <- unlist(strsplit(word, ''))
  word_value <- sum(value[splited_word], na.rm = TRUE)  #### need to remove NA.
  #print(word_value)
  if(is_triangle_num(word_value)){
    return(TRUE)
  }else{
    return(FALSE)
  }
}

con <- file("/home/wuqili/R practise/Project Euler/p042_words.csv")
words <- read.csv(con)  # without header = FALSE, the words are used as colnames.
words <- colnames(words)
#or
#words <- read.csv(con, header = FALSE)
#words <- t(words)[,1]

triangle_words <- words[sapply(words, is_triangle_word)]
(result <- length(triangle_words))