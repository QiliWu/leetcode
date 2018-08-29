#Counting Sundays
#Problem 19

#You are given the following information, but you may prefer to do some research for yourself.

#1 Jan 1900 was a Monday.
#Thirty days has September,
#April, June and November.
#All the rest have thirty-one,
#Saving February alone,
#Which has twenty-eight, rain or shine.
#And on leap years, twenty-nine.
#A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
  

#Method One
isleapyear <- function(year){
  if(year %% 400 == 0){
    return(TRUE)
  }
  if(year %% 4 == 0 & year %% 100 != 0){
    return(TRUE)
  }else{
    return(FALSE)
  }
}

days_in_month <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
names(days_in_month) <- c('M1', 'M2', 'M3', 'M4', 'M5', 'M6', 'M7', 'M8', 'M9', 'M10', 'M11', 'M12')

# 1900 is not a leap year
365 %% 7 = 1
#so 1 Jan 1901 is Tuesday
day <- -5
count <- 0
for(y in 1901:2000){
  if(isleapyear(y)){
    days_in_month['M2'] <- 29
  }else{
    days_in_month['M2'] <- 28
  }
  for(m in 1:12){
    if(day %% 7 == 0){
      count <- count + 1
      print(c(y,m))
    }
    #print(days_in_month[m])
    day <- day + days_in_month[m]
  }
}

# Be careful of y = 2000, m = 12, if day %% == 7, it means 1 Jan 2001 is Sunday. so the final count should be one less.


# Method Two
start_date <- as.POSIXlt('1901-01-01')
stop_date <- as.POSIXlt('2000-12-31')
count <- 0
day <- as.POSIXlt('1901-01-01', tz = 'UTC-8')
while(year(day) < 2001){
  if(weekdays(day) == 'Sunday'){
    #print(day)
    count <- count + 1
  }
  day <- force_tz(day + months(1), tz = 'UTC-8')
  #need to fix the time zone, otherwise the tz may change during months(1) adding which will cause some undefined weekdays, and the result will be 168, not the correct one -- 171.
}
print(count)
