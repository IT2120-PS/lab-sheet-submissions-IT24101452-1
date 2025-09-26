getwd()
setwd("C:\\Users\\it24101452\\Desktop\\IT24101452\\LAB08")


data<-read.table("LaptopsWeights.txt",header = TRUE)

fix(data)
attach(data)
#Q1
popmn <- mean(Weight.kg.)
popsd <-sd(Weight.kg.)


#Q2
samples <- c()
n <- c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples <-cbind(samples,s)
  n<-c(n,paste('S',i))
}


s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

#Q3
samplemean <-mean(s.means)
samplesd <-sd(s.sd)

popmn
popsd

samplemean
samplesd

truevar = popmn/6
samplesd