#패키지 불러오기
install.packages("mosaic"); install.packages("mosaicCalc")
library("mosaic"); library("mosaicCalc")
D(exp(-1*x^2/2)~x) #미분
function(x)
-(exp(-1*x^2/2)*(2*x/2))  
F=antiD(exp(-1*x^2/2)~x) #적분
F(Inf) - F(-Inf) #정적분
pnorm(1)-pnorm(-1) #표준정규분포 P(-1<x<1)
#표준정규분포 그리기
plotFun(dnorm(x)~x, xlim=range(-4,4))
  
