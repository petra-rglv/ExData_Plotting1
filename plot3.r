#Coursera Exploratory Data Analysis, week 1 project
#This script creates plot 3

source("load_data.r")

data <- load_data()

png("plot3.png", width = 480, height = 480, bg="transparent")
with(data, plot(DateTime, Sub_metering_1, type="l", main=NULL, 
                xlab="",ylab = "Energy sub metering"))
lines(data$DateTime,data$Sub_metering_2, col="red")
lines(data$DateTime,data$Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"), lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
