#Bar Graph(1)
library(ggplot2)
library(forcats)
transp <- c("bicycle", "bus", "bus", "walking", "bus", "bicycle", "bicycle", "bus", "bus", "bus", "bicycle", "bus", "bicycle", "bicycle", "walking", "bus", "bus", "bicycle", "bicycle", "walking", "walking", "bicycle", "bus", "bus", "bus", "bus", "bicycle", "bus", "bus", "bicycle", "bicycle", "bicycle")
dat1 <- data.frame(transp)
ggplot(data=dat1) + geom_bar(mapping=aes(x=fct_infreq(transp))) +
  xlab("Transportation")

#Bar Graph(2)
obesity <- factor(c("underweight", "normal", "overweight", "obese"),
                  levels=c("underweight", "normal", "overweight", "obese"))
count <- c(6, 69, 28, 13)
perc <- count/sum(count)*100
dat2 <- data.frame(obesity, count, perc)
ggplot(data=dat2) + geom_bar(mapping=aes(x=obesity, y=perc),
                             stat="identity") + xlab("Obesity") + ylab("Percentage (%)")

#Pie Chart
#Organize data in the form of a frequency distribution table
table(transp)
dat3 <- data.frame(transportation=c("bus", "bicycle", "walking"),
                   count = c(15, 13, 4))
ggplot(data=dat3) + geom_bar(mapping=aes(x="", y=count,
                                        fill=transportation), stat="identity") +
  coord_polar("y", start=0) + xlab("") + ylab("")

#Histogram(1)
score <- c(93, 83, 91, 68, 75, 87, 89, 96, 97, 67, 83, 81, 87, 80, 64, 83, 88,
           76, 91, 78, 72, 80, 69, 80, 84, 71, 91, 81, 88, 73)
hist(score, main="")

#Histogram(2)
rv <- c(0.8, 0.8, 0.8, 0.9, 0.9, 0.9, 0.9, 0.9, 1, 1, 1.8, 2, 2.1, 2.3, 2.4, 2.8,
        2.9, 3, 3.2, 3.3, 3.5, 3.8, 3.9, 4, 4.2, 4.4, 4.5, 5.1, 5.3, 5.3, 5.4, 14, 17,
        18, 19, 21, 21, 23, 25, 27, 28, 32, 34, 36, 41, 42, 44, 48, 49, 51, 54, 59, 60,
        61, 62, 80, 240)
hist(rv, main="", xlab="CRP", breaks=20)
