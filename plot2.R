data$datetime <- strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")
png("plot2.png")
with(data,plot(datetime,Global_active_power,type="l",
               ylab="Global Active Power (kilowatts)"))
dev.off()