## Plotting Househouse Power Consumption Assignment

## data file already filtered to appropriate data (see plot1.R for details)
## data saved to variable "data"

## create png file for plot2
png("plot2.png", width = 480, height = 480)

## create line graph of Global Active Power by Date/Time
plot(x = (data$Date + data$Time), as.numeric(data$Global_active_power), 
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## save graph to png
dev.off()