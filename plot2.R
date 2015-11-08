loadData <- "household_power_consumption.txt"
readData <- read.table(loadData, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
subData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]

dateTime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type = "l", xlab="", ylab = "Global active power (kilowatts)")
dev.off()
