volume <- c(1.8,1.5,2.0,2.5,1.8,2.5,1.6,1.5)
horsepower <- c(51,51,115,150,126,150,118,106)

n <- length(volume)
plot(volume,horsepower,main="11.9 scatterplot"
     ,xlab="Cylinder Volume (x)"
     ,ylab="Horsepower (y)",pch=16)#answer(a)
abline(reg=lm(horsepower~volume),col="red")#answer(c)

xmean <- mean(volume)
ymean <- mean(horsepower)
sxx   <- sum((volume-xmean)^2)
sxy   <- sum((volume-xmean)*(horsepower-ymean))
slope <- sxy/sxx
beta  <- ymean-xmean*slope

f=makeFun(-15.45 + 65.17*x~x)
plotFun(f(x)~x,x.lim=range(1.5,2.5))#answer(b)

print(f(1.9)) #answer(d)
