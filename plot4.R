setwd("C:\\Users\\14911\\Documents\\Statistics\\研选课\\JHU\\assignment")
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
hpc[,1]<-as.character(hpc[,1])
hpcs<-subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")

#4
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2)) #plot 4 little plots with 2 rows and 2 columns
#4.1
hpcs[,3]<-as.numeric(as.character(hpcs[,3]))
plot(hpcs[,3],type="l",xlab="",ylab="Global active power",xaxt="n")
axis(side=1,at=seq(1,2881,1440),labels=c("Thu","Fri","Sat"))

#4.2
hpcs[,5]<-as.numeric(as.character(hpcs[,5]))
plot(hpcs[,5],type="l",xlab="datetime",ylab="Voltage",xaxt="n",yaxt="n")
g<-seq(from=234,to=246,by=4)
axis(2,g)
h<-seq(from=236,to=244,by=4)
axis(2,h,labels=FALSE)
x<-c("Thu","Fri","Sat")
axis(side=1,at=seq(1,2881,1440),labels=x)

#4.3
hpcs[,7]<-as.numeric(as.character(hpcs[,7]))
hpcs[,8]<-as.numeric(as.character(hpcs[,8]))
plot(hpcs[,7],type="l",xlab="",ylab="Energy sub metering",xaxt="n",col="black")
lines(hpcs[,8],type="l",xlab="",xaxt="n",col="red")
lines(hpcs[,9],type="l",xlab="",xaxt="n",col="blue")
axis(side=1,at=seq(1,2881,1440),labels=x)
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),cex=0.5,bty="n",lwd=1)

#4.4
hpcs[,4]<-as.numeric(as.character(hpcs[,4]))
plot(hpcs[,4],type="l",xlab="datetime",ylab="Global_reactive_power",xaxt="n",yaxt="n")
axis(side=1,at=seq(1,2881,1440),labels=c("Thu","Fri","Sat"))
axis(2,seq(0.0,0.5,0.1))
dev.off()
