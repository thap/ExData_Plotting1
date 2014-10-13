png("plot4.png")

opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2))

with(data,plot(datetime,Global_active_power,type="l",
               ylab="Global Active Power (kilowatts)"))

with(data,plot(datetime,Voltage,type="l",
               ylab="Voltage"))

with(data,plot(datetime,Sub_metering_1,type="l",xlab="",
               ylab="Energy sub metering",main=""))
with(data,lines(datetime,Sub_metering_2,col="red"))
with(data,lines(datetime,Sub_metering_3,col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,col=c("black","red","blue"))

with(data,plot(datetime,Global_reactive_power,type="l",
               ylab="Global Reactive Power (kilowatts)"))

par(opar)

dev.off()