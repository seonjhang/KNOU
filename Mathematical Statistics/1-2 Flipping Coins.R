#패키지 불러오기
library(mosaic)
rflip(6) #동전 6개 던지기
do(4) * rflip(6) #동전 6개 던지기를 4번 반복
#동전 6개 던지기를 1,000번 반복하고 표, 히스토그램 그리기
r_rflip <- do(1000) * rflip(6)
tally(~heads, data=r_rflip)
histogram(~heads, data=r_rflip, width=1)
