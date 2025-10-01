getwd()
setwd("C:\\Users\\chami\\OneDrive\\Desktop\\Lab09")
  
#Q1
time <- rnorm(25, mean =45,sd=2)
print(time)

#Q2
t.test(time,mu=46, alternative="greater")
