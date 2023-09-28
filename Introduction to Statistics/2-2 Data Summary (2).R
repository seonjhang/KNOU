install.packages("ggplot2"); install.packages("forcats")
library(ggplot2)
library(forcats)

#Histogram(3)
set.seed(2021)
rn <- c(rnorm(100, 5, 2), rnorm(100, 10, 2))
hist(rn)
hist(rn, breaks=20, main="", xlab="value")
hist(rn, breaks=5, main="", xlab="value")

#Scatter Plot(1)
age <- c(57, 61, 47, 57, 48, 58, 57, 61, 54, 50, 68, 51)
#average
m.age <- mean(age)
par(xpd=TRUE)
stripchart(age, axes=F, pch=19, xlim=c(45, 70), method="stack", offset=5, cex=1.5)
axis(1, at=seq(45, 70, 5))
points(m.age, -5, pch=17, cex=2, col="blue")

#Scatter Plot(2)
books <- c(6, 0, 1, 3, 1, 5, 2, 3, 1, 3, 67)
m.books <- mean(books)
par(xpd=True)
stripchart(books, axes=F, pch=1, xlim=c(0,70), method="stack", offset=5, cex=1.5)
axis(1, at=seq(0,0, 10))
points(m.books, -5, pch=17, cex=2, col="red")

#5 number summary & Box Plot
age <- c(57, 61, 47, 57, 48, 58, 57, 61, 54, 50, 68, 51)
fivenum(age)
boxplot(age, ylab="Age")

#Box Plot
member <- c(92, 107, 180, 90, 78, 91, 102, 99, 106, 125, 95, 102, 162)
boxplot(member, ylab="Number of board members")
