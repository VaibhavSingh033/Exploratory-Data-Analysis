plot1 <- function()
{
 #dat1 <- read.csv.sql("exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",sql="select * from file where Date > #01/02/2007# and date < #02/02/2007#",eol = "\n", sep = ";")
 dat1 <- read.table(file="exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep=";", header = TRUE)

 dat1$Date <- as.Date(dat1$Date,"%d/%m/%Y")
 subSetData <- subset(dat1,(dat1$Date >= as.Date("2007-02-01") & dat1$Date <= as.Date("2007-02-02")))
  l <- head(dat1)
  
  par(mfrow=c(1,1))
  globalActivePower <- as.numeric(subSetData$Global_active_power)
  png("plot1.png", width=480, height=480)
  hist(globalActivePower,col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.off()
}