d=read.csv("redline.csv",header=F)
top=read.csv("topgray.csv",header=F)
bot=read.csv("botgray.csv",header=F)

par(mar=c(5,6,1,1))

span = 75
plot(d$V1,d$V2 + d$V1 + 5*60+44,xlim=c(0,span), ylim=c(5*60+44, 5*60+44+span),type='l',lwd=2,
     xlab="Departure delay:\nminutes since scheduled departure", 
     ylab="Total trip time:\nminutes since scheduled departure")
abline(a=5*60+44,b=1,col='blue')
lines(bot$V1,bot$V2+bot$V1+5*60+44,col='gray')
lines(top$V1,top$V2+top$V1+5*60+44,col='gray')

