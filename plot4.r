#Coursera Exploratory Data Analysis, week 1 project
#This script creates plot 4

source("load_data.r")

data <- load_data()

png("plot4.png", width = 480, height = 480, bg="transparent")
par(mfrow=c(2,2))

#make the first subplot
with(data, plot(DateTime, Global_active_power, type="l", main=NULL, 
                xlab="",ylab = "Global Active Power"))

#make the second subplot
with(data, plot(DateTime, Voltage, type="l", main=NULL, 
                xlab="datetime",ylab = "Voltage"))

#make the third subplot
with(data, plot(DateTime, Sub_metering_1, type="l", main=NULL, 
                xlab="",ylab = "Energy sub metering"))
lines(data$DateTime,data$Sub_metering_2, col="red")
lines(data$DateTime,data$Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"), lty=1, bty="n",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#make the fourth subplot
with(data, plot(DateTime, Global_reactive_power, type="l", main=NULL, 
                xlab="datetime",ylab = "Global_reactive_power"))

dev.off()
