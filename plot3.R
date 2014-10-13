png("plot3.png")
with(data,plot(datetime,Sub_metering_1,type="l",xlab="",
               ylab="Energy sub metering",main=""))
with(data,lines(datetime,Sub_metering_2,col="red"))
with(data,lines(datetime,Sub_metering_3,col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,col=c("black","red","blue"))
dev.off()