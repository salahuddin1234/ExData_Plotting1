library(data.table)
dat<- fread("household_power_consumption.txt")

dat <- rbind(data[data$Date=="1/2/2007",],data[data$Date=="2/2/2007",])

install.packages("lubridate")
library(lubridate)
t<-dmy_hms(paste(dat$Date, dat$Time, sep=" "))

par(mfrow = c(2, 2))

install.packages("lubridate")
library(lubridate)
t<-dmy_hms(paste(dat$Date, dat$Time, sep=" "))
plot(t, dat$Global_active_power, type = "l",xlab="datetime",ylab="Global_active_power",main="Global_active_power")
plot(t, dat$Voltage, type = "l",xlab="datetime",ylab="Global_active_power",main="Global_active_power")

plot(t, dat$Sub_metering_1, type = "l",ylab="Global_active_power",main="Global_active_power")
lines(t, dat$Sub_metering_2, type = "l",ylab="Global_active_power",main="Global_active_power",col="red")
lines(t, dat$Sub_metering_3, type = "l",ylab="Global_active_power",main="Global_active_power",col="blue")
legend("topright", pch = 1, col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

plot(t, dat$Global_reactive_power, type = "l",xlab="datetime",ylab="Global_active_power",main="Global_active_power")
