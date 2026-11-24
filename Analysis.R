library(tidyverse)
DataURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!dir.exists("./Data"))
  dir.create("./Data")
download.file(DataURL, "./Data/ElectricData.zip")
downloadDate <- date()
write(downloadDate, file = "downloadDate.txt")
setwd("./Data")
unzip("ElectricData.zip")
rawElectricData <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
head(rawElectricData)
ElectricData <- rawElectricData %>%
  unite(Date, Time, sep = " ", remove = TRUE, col = "Date")

ElectricData$Date <- strptime(ElectricData$Date, "%d/%m/%Y %H:%M:%S")

for(i in 2:8) {
  ElectricData[,i] <- as.numeric(ElectricData[,i])
}

ElectricData <- drop_na(ElectricData)
summary(ElectricData)

febElectricData <- ElectricData %>%
  filter(as.POSIXct("2007-02-01")<= Date) %>%
  filter(Date < as.POSIXct("2007-02-03")) %>%
  mutate(Weekday = weekdays(Date))

setwd("../")
