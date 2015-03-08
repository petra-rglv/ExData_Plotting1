#Coursera Exploratory Data Analysis, week 1 project
#This script creates plot 1

source("load_data.r")

data <- load_data()

png("plot1.png", width = 480, height = 480, bg="transparent")
with(data,hist(Global_active_power, main="Global Active Power", 
               xlab = "Global Active Power (kilowatts)", col = "red"))

dev.off()
