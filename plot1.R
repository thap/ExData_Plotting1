# if(!file.exists('data')) {
#     dir.create('data')
# }
# fileURL <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
# download.file(fileURL, destfile='data/electric.zip', method='curl')
#  unzip('data/electric.zip',exdir='data')

data <- read.table('data/household_power_consumption.txt', 
                   sep=";",
                   skip=66637,
                   nrows=2880,
                   na.string="?",
                   colClasses=c("character","character",rep("numeric",times=7)))
                   
png("plot1.png")
hist(data$V3, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()