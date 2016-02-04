#setwd("") set the working directory

Data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.strings="?")

Data <- subset(Data, strptime(Data$Date, "%d/%m/%Y") == strptime("01/02/2007", "%d/%m/%Y") | 
                 strptime(Data$Date, "%d/%m/%Y") == strptime("02/02/2007", "%d/%m/%Y"))


### Plot 1

with(Data, hist(Global_active_power, col=2, main="Global Active Power", xlab="Global Active Power (kilowatts)"))


png("plot1.png")
with(Data, hist(Global_active_power, col=2, main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()