#loading the dataset into R
setwd("C:\\Users\\14911\\Documents\\Statistics\\研选课\\JHU\\assignment")
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

#data from the dates 2007-02-01 and 2007-02-02
hpc[,1]<-as.character(hpc[,1])
hpcs<-subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")

#1
hpcs[,3]<-as.numeric(as.character(hpcs[,3]))
png("plot1.png",width=480,height=480)
hist(hpcs[,3],col="red",main="Global active power",xlab="Global active power(kilowatts)")
dev.off()
