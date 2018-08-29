Number letter counts
Problem 17

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
  
  NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.





single <- c('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine')
two_a <- c('ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen')
two_b <- c('twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety')
three_a <- c('hundred')
three_b <- c('and')
four <- c('onethousand')

from_1_to_9 <- sum(nchar(single)) 
from_10_to_19 <- sum(nchar(two_a))
from_20_to_99 <- sum(nchar(two_b)) * 10 + from_1_to_9 * 8
from_100_to_999 <- from_1_to_9 * 100 + nchar(three_a) * 900 + nchar(three_b) * 891 + (from_1_to_9 + from_10_to_19 + from_20_to_99) * 9

(from_1_to_1000 <- from_1_to_9 + from_10_to_19 + from_20_to_99 +from_100_to_999 + nchar(four))