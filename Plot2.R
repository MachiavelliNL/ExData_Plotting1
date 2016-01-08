library(dplyr)
library(lubridate)

setwd("Data Science Specialization/Exploratory Data Analysis")
DF <- read.csv("household_power_consumption.txt", sep = ";", colClasses = rep("character",9))
DF1 <- filter(DF, Date %in% c("1/2/2007" ,"2/2/2007" ))
DF1 <- mutate(DF1, Date = dmy(Date), Time = hms(Time), DateTime = Date + Time)
y<-as.numeric(DF1$Global_active_power)
x <- DF1$DateTime
plot(x,y, type = "l", main="", xlab= "", ylab = "Global Active Power (Kilowatts)")
dev.copy(device=png,file = "Plot2.png")
dev.off()