#setwd("") set the working directory

Data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.strings="?")

Data <- subset(Data, strptime(Data$Date, "%d/%m/%Y") == strptime("01/02/2007", "%d/%m/%Y") | 
                 strptime(Data$Date, "%d/%m/%Y") == strptime("02/02/2007", "%d/%m/%Y"))


### Plot 4
par(mfrow=c(2,2))

with(Data, plot(Global_active_power, typ="l", ylab="Global Active Power", xlab="", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))

with(Data, plot(Voltage, typ="l", ylab="Voltage", xlab="datetime", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))

with(Data, plot(Sub_metering_1, typ="l", ylab="Energy sub metering", xlab="", xaxt="n"))
with(Data, lines(Sub_metering_2, typ="l", col=2))
with(Data, lines(Sub_metering_3, typ="l", col=4))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch=NA, lty=1, col=c(1,2,4), bty="n")

with(Data, plot(Global_reactive_power, typ="l", ylab="Global_reactive_power", xlab="datetime", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))



png("plot4.png")
par(mfrow=c(2,2))
with(Data, plot(Global_active_power, typ="l", ylab="Global Active Power", xlab="", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
with(Data, plot(Voltage, typ="l", ylab="Voltage", xlab="datetime", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
with(Data, plot(Sub_metering_1, typ="l", ylab="Energy sub metering", xlab="", xaxt="n"))
with(Data, lines(Sub_metering_2, typ="l", col=2))
with(Data, lines(Sub_metering_3, typ="l", col=4))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch=NA, lty=1, col=c(1,2,4), bty="n")
with(Data, plot(Global_reactive_power, typ="l", ylab="Global_reactive_power", xlab="datetime", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
dev.off()