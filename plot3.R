pdf(file = "plot3.pdf")

plot(febElectricData$Date, febElectricData$Sub_metering_1, type = "l",
     xlab = "",
     ylab = "Energy sub metering",
     axes = FALSE)
axis(1, at = c(as.POSIXct("2007-02-01"),as.POSIXct("2007-02-02"),as.POSIXct("2007-02-03")), 
     labels = c("Thu","Fri","Sat"))
axis(2, at = c(-1, 10*1:4))
lines(febElectricData$Date, febElectricData$Sub_metering_2, col = "red")
lines(febElectricData$Date, febElectricData$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 2)

dev.off()
