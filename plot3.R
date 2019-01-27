#loading the dataset into R
setwd("C:\\Users\\14911\\Documents\\Statistics\\研选课\\JHU\\assignment")
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

#data from the dates 2007-02-01 and 2007-02-02
hpc[,1]<-as.character(hpc[,1])
hpcs<-subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")

#3
hpcs[,7]<-as.numeric(as.character(hpcs[,7]))
hpcs[,8]<-as.numeric(as.character(hpcs[,8]))
png("plot3.png",width=480,height=480)
plot(hpcs[,7],type="l",xlab="",ylab="Energy sub metering",xaxt="n",col="black")
lines(hpcs[,8],type="l",xlab="",xaxt="n",col="red")
lines(hpcs[,9],type="l",xlab="",xaxt="n",col="blue")
axis(side=1,at=seq(1,2881,1440),labels=c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=1)
dev.off()
