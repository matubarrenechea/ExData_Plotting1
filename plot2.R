#setwd("") set the working directory

Data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.strings="?")

Data <- subset(Data, strptime(Data$Date, "%d/%m/%Y") == strptime("01/02/2007", "%d/%m/%Y") | 
                 strptime(Data$Date, "%d/%m/%Y") == strptime("02/02/2007", "%d/%m/%Y"))


### Plot 2

with(Data, plot(Global_active_power, typ="l", ylab="Global Active Power", xlab="", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))


png("plot2.png")
with(Data, plot(Global_active_power, typ="l", ylab="Global Active Power", xlab="", xaxt="n"))
axis(1, at=c(1,1441,2881), c("Thu", "Fri", "Sat"))
dev.off()