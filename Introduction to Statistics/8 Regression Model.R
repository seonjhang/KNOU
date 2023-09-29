#Fitting a Simple Linear Regression Model
#8-1
x <- c(56, 80, 50, 78, 65, 75, 53, 57, 53, 44)
y <- c(164, 180, 160, 175, 170, 175, 160, 169, 165, 150)
reg <- lm(y~x)
summary(reg)

#Fitting a Multiple Regression Model
#8-7
x1 <- c(4, 6, 6, 7, 8, 9, 9, 9, 11, 12)
x2 <- c(3, 4, 5, 5, 6, 7, 6, 8, 8, 9)
y <- c(38, 42, 46, 47, 50, 53, 52, 56, 58, 62)
reg1 <- lm(y ~ x1+x2)
summary(reg1)

#Graph for Residual Analysis
#8-10
a1 <- c(4, 6, 6, 7, 8, 9, 9, 9, 11, 12)
a2 <- c(3, 4, 5, 5, 6, 7, 6, 8, 8, 9)
b <- c(38, 42, 46, 47, 50, 53, 52, 56, 58, 62)
reg1 <- lm(y ~ a1+a2)
summary(reg1)
res <- resid(reg1)
plot(fitted(reg1), res)
abline(0, 0)
qqnorm(res)
qqline(res)
