temperature <- c(95,82,90,81,99,100,93,95,93,87)
peakload <- c(214,152,156,129,254,266,210,204,213,150)

tempmean <- mean(temperature)
peakloadmean <- mean(peakload)
sxx <- sum((temperature-tempmean)^2)
syy <- sum((peakload-peakloadmean)^2)
sxy <- sum((temperature-tempmean)*(peakload-peakloadmean))
r <- sxy/sqrt((sxx*syy))

conf.level=0.95
summary(lm(peakload~temperature))
