setwd("C:/Curso Exploratory Data Analysis - Coursera")
library(lubridate)

Data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.strings="?")

Data2 <- subset(Data, strptime(Data$Date, "%d/%m/%Y") == strptime("01/02/2007", "%d/%m/%Y") | 
                  strptime(Data$Date, "%d/%m/%Y") == strptime("02/02/2007", "%d/%m/%Y"))


### Plot 1
par(mfrow=c(1,1))
hist(Data2$Global_active_power, col=2, main="Global Active Power", xlab="Global Active Power (kilowatts)")


### Plot 2

plot(Data2$Global_active_power, typ="l", ylab="Global Active Power", xlab="", xaxt="n")
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))


### Plot3

plot(Data2$Sub_metering_1, typ="l", ylab="Energy sub metering", xlab="", xaxt="n")
lines(Data2$Sub_metering_2, typ="l", col=2)
lines(Data2$Sub_metering_3, typ="l", col=4)
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch=NA, lty=1, col=c(1,2,4))


### Plot 4
par(mfrow=c(2,2))

plot(Data2$Global_active_power, typ="l", ylab="Global Active Power", xlab="", xaxt="n")
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))

plot(Data2$Voltage, typ="l", ylab="Voltage", xlab="", xaxt="n")
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))

plot(Data2$Sub_metering_1, typ="l", ylab="Energy sub metering", xlab="", xaxt="n")
lines(Data2$Sub_metering_2, typ="l", col=2)
lines(Data2$Sub_metering_3, typ="l", col=4)
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch=NA, lty=1, col=c(1,2,4), bty="n")


plot(Data2$Global_reactive_power, typ="l", ylab="Global_reactive_power", xlab="", xaxt="n")
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))

