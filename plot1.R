loadData <- "household_power_consumption.txt"
readData <- read.table(loadData, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
subData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global active power", xlab="Global active power (kilowatts)", ylab = "frequency")
dev.off()
