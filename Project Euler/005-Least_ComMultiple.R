#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#  最小公倍数=两数的乘积/最大公约（因）数, 解题时要避免和最大公约（因）数问题混淆。 最小公倍数的适用范围：分数的加减法，中国剩余定理(正确的题在最小公倍数内有解，有唯一的解)。[2]  因为，素数是不能被1和自身数以外的其它数整除的数；素数X的N次方，是只能被X的N及以下次方，1和自身数整除．所以，给最小公倍数下一个定义：S个数的最小公倍数，为这S个数中所含素因子的最高次方之间的乘积。如：1，求756，4400，19845，9000的最小公倍数？因756=2*2*3*3*3*7，4400=2*2*2*2*5*5*11，19845=3*3*3*3*5*7*7，9000=2*2*2*3*3*5*5*5，这里有素数2，3，5，7，11．2最高为4次方16，3最高为4次方81，5最高为3次方125，7最高为2次方49，还有素数11．得最小公倍数为16*81*125*49*11=87318000．2，自然数1至50的最小公倍数，因为，√50≈7，所以，在50之内的数只有≤7的素数涉及N次方。在50之内，2的最高次方的数为32，3的最高次方的数为27，5的最高次方的数为25，7的最高次方的数为49，其余为50之内的素数。所以，1，2，3，4，5，6，…，50的最小公倍数为：32*27*25*49*11*13*17*19*23*29*31*37*41*43*47=3099044504245996706400

isprimenumber <- function(x){
  if(x == 1){
    return(FALSE)
  }else{
    y <- as.integer(sqrt(x)) + 1
    for(i in 2:y){
      if(x %% i == 0 & x != 2){
        return(FALSE)
      }
    }
    return(TRUE)
  }
}

Least_ComMultiple <- function(num){
  prime <- list()
  result <- 1
  for(i in 2:num){
    if(isprimenumber(i)){
      prime[[toString(i)]] <- i
      m <- as.integer(log(num, i))
      result <- result * (i**m)
    }
  }
  message('The smallest common multiple number of all the numbers in 1:', num, ' is ', result)
  return(prime)
}




