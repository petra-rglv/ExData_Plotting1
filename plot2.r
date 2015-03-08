#Coursera Exploratory Data Analysis, week 1 project
#This script creates plot 2

source("load_data.r")

data <- load_data()

png("plot2.png", width = 480, height = 480, bg="transparent")
with(data, plot(DateTime, Global_active_power, type="l", main=NULL, 
               xlab="",ylab = "Global Active Power (kilowatts)"))

dev.off()

