y <- c(27.6,32.5,35.9,39.3,44.2,48.8,55.7,62.9)
x <- c(1,2,3,4,5,6,7,8)
yearaverage <- mean(x)
priceaverage <- mean(y)

n <- length(x)
SXX <- sum((x - yearaverage)^2)
SXY <- sum((x-yearaverage)*(y-priceaverage))

slope <- SXY/SXX
beta  <- priceaverage-slope*yearaverage

plot(x,y,main = "11.5 scatterplot"
     ,xlab="Year(1972~1979)"
     ,ylab="MedianSalesPrice",pch=16)
abline(reg = lm(y ~ x),col="red")
