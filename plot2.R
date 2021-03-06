#loading the dataset into R
setwd("C:\\Users\\14911\\Documents\\Statistics\\研选课\\JHU\\assignment")
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

#subsetting to data from dates 2007-02-01 and 2007-02-02
hpc[,1]<-as.character(hpc[,1])
hpcs<-subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")

#2
hpcs[,3]<-as.numeric(as.character(hpcs[,3]))
png("plot2.png",width=480,height=480)
plot(hpcs[,3],type="l",xlab="",ylab="Global active power(kilowatts)",xaxt="n")
axis(side=1,at=seq(1,2881,1440),labels=c("Thu","Fri","Sat"))
dev.off()
