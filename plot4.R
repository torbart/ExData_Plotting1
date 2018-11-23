## Plotting Househouse Power Consumption Assignment

## data file already filtered to appropriate data (see plot1.R for details)
## data saved to variable "data"

## create png file for plot2
png("plot4.png", width = 480, height = 480)

## set parameters of graphic
par(mfrow=c(2,2))

## create graphs n order by row
## graph 1
plot(x = (data$Date + data$Time), as.numeric(data$Global_active_power), 
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## graph 2
plot(x = (data$Date + data$Time), 
     y = (as.numeric(as.character(data$Voltage))), 
type = "l", xlab = "datetime", ylab = "Voltage")

## graph 3
plot(x = (data$Date + data$Time), as.numeric(data$Sub_metering_1),
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = (data$Date + data$Time), 
      y = as.numeric(as.character(data$Sub_metering_2)),
      col = "red")
lines(x = (data$Date + data$Time), y = as.numeric(data$Sub_metering_3), 
      col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                              "Sub_metering_3"), lty = 1, bty = "n", 
       col = c("black", "red", "blue"))

## graph 4
plot(x = (data$Date + data$Time), 
     y = as.numeric(as.character(data$Global_reactive_power)), 
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")

## save graph matrix to png
dev.off()