library(dplyr)
library(lubridate)

setwd("Data Science Specialization/Exploratory Data Analysis")
DF <- read.csv("household_power_consumption.txt", sep = ";", colClasses = rep("character",9))
DF1 <- filter(DF, Date %in% c("1/2/2007" ,"2/2/2007" ))
DF1 <- mutate(DF1, Date = dmy(Date), Time = hms(Time), DateTime = Date + Time)
x<-as.numeric(DF1$Global_active_power)/500
hist(x, col = "red",main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.copy(device=png,file = "Plot1.png")
dev.off()


