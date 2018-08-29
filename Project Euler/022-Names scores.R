#VNames scores
#Problem 22

#Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

#For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

#What is the total of all the name scores in the file?
  


alph_value <- function(s){
  value <- 1:26
  names(value) <- LETTERS
  s_splited <- unlist(strsplit(s, ''))
  return(sum(value[s_splited]))
}

con <- file('/home/wuqili/R practise/Project Euler/p022_names.txt')
p_names <- readLines(con)
splited_names <- unlist(strsplit(p_names, '\"(,\")?'))
sort_names <- sort(splited_names[-1])
l <- length(sort_names)
name_worth <- sapply(sort_names, alph_value)
name_scores <- name_worth * c(1:l)
print(sum(name_scores))


#con3 <- file('/home/wuqili/R practise/Project Euler/p022_names.csv')
#p_names <- read.csv(con3)
