#This function downloads the dataset, reads the data, selects the data for
#01/02/2007 and 02/02/2007 and adds a column with Date and Time.
#Returns the data frame obtained.

load_data <- function(){
    temp <- tempfile()
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, destfile=temp, mode="wb")
    con <- unz(temp, "household_power_consumption.txt")
    data <- read.table(con, 
                       nrows=66636+2880, header=TRUE, sep=";", 
                       na.strings = "?")
    unlink(temp)
    
    data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
    data$DateTime <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
    #data$Date <- as.Date(data$Date, format="%d/%m/%Y")
    return(data)
}
