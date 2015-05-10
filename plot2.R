library(data.table)
dat<- fread("household_power_consumption.txt")

dat <- rbind(data[data$Date=="1/2/2007",],data[data$Date=="2/2/2007",])



install.packages("lubridate")
library(lubridate)
t<-dmy_hms(paste(dat$Date, dat$Time, sep=" "))
plot(t, dat$Global_active_power, type = "l",ylab="Global_active_power",main="Global_active_power")


