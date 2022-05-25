x <- c(8,8,12,12,16,16,20,20,24,24)
y <- c(8,6,6,10,8,14,14,12,16,12)

n <- length(x)
plot(x,y,main="11.19 scatterplot"
     ,xlab="Number of Hours without Sleep(x)"
     ,ylab="Number of Errors(y)",pch=16)

xmean <- mean(x)
ymean <- mean(y)
sxx   <- sum((x-xmean)^2)
sxy   <- sum((x-xmean)*(y-ymean))
syy   <- sum((y-ymean)^2)
slope <- sxy/sxx
beta  <- ymean-xmean*slope
sse   <- syy-slope*sxy
f=makeFun(3.00 + 0.475*x~x)#answer(a)
abline(reg=lm(y~x),col="red")#answer(b)
ssquare <- sse/(n-2)
print(ssquare)#answer(c)
