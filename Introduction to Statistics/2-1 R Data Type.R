#Obejct
a <- 1
b <- 2
c <- a + b
c

#Vector
height <- c(165, 151, 162, 160, 151, 152, 159, 163, 143, 161)
height

#Vector & Obejct
d <- 1:3
d
e <- seq(1, 9, 2)
e
f <- rep(10,5)
f
g <- c(d, f)
g
h <- c(4:1, seq(0,9,3))
h

#Vector Calculation
e+f
e-f
e*f
e/f
d+f #error

#Data Type
#Numeric Vector
i <- 1:4
i
#Categorical Vector
j <- as.factor(1:4)
j
#Numeric Vector: calculation is possible
i+1
#Categorical Vector: calculation is not possible
j+1
#Character Vector
k <- as.characer(1:4)
k
l <- c("K", "N", "O", "U")
l
#Logical Obejct
m <- i>2
m
