#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a^2 + b^2 = c^2

#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

# 3 * a < 1000 --- a in 1:333

for(a in 1:332){
  for(c in (335:1000)){
    if(c^2 - a^2 == (1000-c-a)^2){
      print(c(a, 1000-a-c, c))
      message('The product abc is ', a*c*(1000-c-a))
    }
  }
}
