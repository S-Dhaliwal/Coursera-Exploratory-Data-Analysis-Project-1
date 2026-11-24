pdf(file = "plot1.pdf")
hist(febElectricData$Global_active_power, breaks = 12,
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power",
     col = "red")
dev.off()
