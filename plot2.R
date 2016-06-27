plot2 <- function()
{
  dat1 <- read.table(file="exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep=";", header = TRUE,stringsAsFactors=FALSE, dec=".")
  
  subSetData <- dat1[dat1$Date %in% c("1/2/2007","2/2/2007") ,]
  
  datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  globalActivePower <- as.numeric(subSetData$Global_active_power)
  png("plot2.png", width=480, height=480)
  plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
 
   dev.off()
  
}