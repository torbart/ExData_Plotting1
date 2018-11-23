## Plotting Househouse Power Consumption Assignment

## data file already filtered to appropriate data (see plot1.R for details)
## data saved to variable "data"

## create png file for plot3
png("plot3.png", width = 480, height = 480)

## create line graph of Submetering readings by Date/Time
plot(x = (data$Date + data$Time), as.numeric(data$Sub_metering_1),
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(x = (data$Date + data$Time), 
      y = as.numeric(as.character(data$Sub_metering_2)),
      col = "red")
lines(x = (data$Date + data$Time), y = as.numeric(data$Sub_metering_3), 
      col = "blue")

## create legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                                  "Sub_metering_3"), lty = 1, bty="n",
       col = c("black", "red", "blue"))


## save graph to png
dev.off()


