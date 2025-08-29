getwd()
setwd("C:\\Users\\it24101452\\Desktop\\IT24101452")
Delivery_Times<- read.table("Exercise-Lab 05.txt",header=TRUE,)
fix(Delivery_Times)
names(Delivery_Times) <- c("X1")
attach(Delivery_Times)


histogram<- hist(X1,main="Delivery Times")

histogram<- hist(X1,main="Delivery Times",breaks=seq(20,70,length=10),right=FALSE)
?hist

#The distribution of delivery times is approximately symmetric, with a slight spread around the center.

breaks <- round(histogram$breaks)
freq <-(histogram$counts)
mids <- (histogram$mids)

classes <- c()

for(i in 1: length(breaks)-1){Classes[i] <-paste0("[",breaks[i+1],")")}
cbind(Classes=classes,frequency=freq)


lines(mids,freq)
plot(mids,freq,type="o",main="frequency polygon for delivery time",xlab="delivary time",ylab="frequancy",ylim=c(0,max(freq)))



cum.freq <- cumsum(freq)

new <-c()

for(i in 1: length(breaks)){if(i==1){new[i]=0}else{new[i]=cum.freq[i-1]}}

plot(breaks,new,type='o',main = "cumulative frequency polygon for delivery times",xlab="Delivary time",ylab="Cumalative frequency",ylim=c(0,max(cum.freq)))

