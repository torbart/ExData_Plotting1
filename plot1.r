## Plotting Househouse Power Consumption Assignment

## load necessary packages
library(dplyr)
library(chron)

## read the data to a table
data <- read.table("household_power_consumption.txt", 
                   sep = ";", header = T) ## WD already set appropriately

## make Date & Time columns class Date & Time
data$Time <- times(data$Time)
data$Date <- as.Date(data$Date, "%d/%m/%Y")

## filter the data by date
data <- filter(data, Date >= "2007-02-01" & Date <= "2007-02-02")

## create png file
png("plot1.png", width = 480, height = 480)

## create histogram of Global Active Power
hist(as.numeric(data$Global_active_power), col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (killowatts)")

## save historgram to png
dev.off()