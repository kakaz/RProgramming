kandydaci_sejm <- read.csv("~/Documents/Moje/R/Wybory 9.10.2011/kandydaci_sejm.csv", sep=";", dec=",")
str(kandydaci_sejm)
attach(kandydaci_sejm)
summary(Liczba.głosów)
cyfra.liczba.glosow<-substr(Liczba.głosów,1,1)
table(cyfra.liczba.glosow)
View(cyfra.liczba.glosow)
cyfra.liczba.glosow[1]
hist(as.numeric(cyfra.liczba.glosow))
freq<-as.numeric(cyfra.liczba.glosow)
freq
scaling<-vector("numeric", 695)
scaling
indx<-vector("numeric", 695)
for(i in 0:695) {x <- as.numeric(substr(freq*(1.01)^i,1,1))
scaling[i] <- sum(x ==1)
indx[i] = i }
indx
scaling
plot(indx,scaling)
summary(scaling)
table(as.numeric(cyfra.liczba.glosow))
help(sum)
cyfra.test<-as.numeric(cyfra.liczba.glosow)
sum(cyfra.test==1)
sum(cyfra.test==2)
help(chi)
??chi
help(chisq.test)
bedford<-function(x) {ifelse(x==0,0,log10(1+1/x))}
bedford(1)
bedford.p <-c(bedford(1), bedford(2), bedford(3), bedford(4), bedford(5), bedford(6), bdford(7), bedford(8), bedford(9))
bedford.p <-c(bedford(1), bedford(2), bedford(3), bedford(4), bedford(5), bedford(6), bedford(7), bedford(8), bedford(9))
bedford.p
sum(bedford.p)
chisq.test(cyfra.test, p=bedford.p)
cyfra.test.x<-c(sum(cyfra.test==1),sum(cyfra.test==2), sum(cyfra.test==3), sum(cyfra.test==4), sum(cyfra.test==5), sum(cyfra.test==6), sum(cyfra.test==7), sum(cyfra.test==8), sum(cyfra.test==9))
cyfra.test.x
chisq.test(cyfra.test.x, p=bedford.p)
savehistory("~/Documents/Moje/R/wybory.R")
