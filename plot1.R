library(data.table)
data<- fread("household_power_consumption.txt")

data <- rbind(data[data$Date=="1/2/2007",],data[data$Date=="2/2/2007",])
d<- as.numeric(dat$Global_active_power)
hist(d,col="red",main="Global_active_power", xlab="Global_active_power(KW)")


