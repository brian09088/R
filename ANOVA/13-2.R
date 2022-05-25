#example13.2
#not use package
A <- c(65,87,73,79,81,69)
B <- c(75,69,83,81,72,79,90)
C <- c(59,78,67,62,83,76)
D <- c(94,89,80,88)
CM <- ( sum(A)+sum(B)+sum(C)+sum(D) )^2/23
(SSTO <- sum(c(A^2,B^2,C^2,D^2))-CM)#SSTO
(SST <- sum( sum(A)^2/6+sum(B)^2/7+sum(C)^2/6+sum(D)^2/4 ) -
    CM)#SST
(SSE <- SSTO-SST)
