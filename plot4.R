pdf(file = "plot4.pdf")

par(mfrow = c(2,2))


#plot one
plot(febElectricData$Date, febElectricData$Global_active_power, type = "l",
     ylab = "Global Active Power",
     xlab = "",
     axes = FALSE
)
axis(1, at = c(as.POSIXct("2007-02-01"),as.POSIXct("2007-02-02"),as.POSIXct("2007-02-03")), 
     labels = c("Thu","Fri","Sat"))
axis(2, at = c(2*-1:4))


#plot two
plot(febElectricData$Date, febElectricData$Voltage, type = "l",
     ylab = "Voltage",
     xlab = "datetime",
     axes = FALSE)
axis(1, at = c(as.POSIXct("2007-02-01"),as.POSIXct("2007-02-02"),as.POSIXct("2007-02-03")), 
     labels = c("Thu","Fri","Sat"))
axis(2, at = seq(from = 230, to = 246, by = 2))


#plot three
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
       lty = 1, lwd = 1)

#plot four
plot(febElectricData$Date, febElectricData$Global_reactive_power, type = "l",
     xlab = "datetime",
     ylab = "Global_Reactive_Power",
     axes = FALSE)
axis(1, at = c(as.POSIXct("2007-02-01"),as.POSIXct("2007-02-02"),as.POSIXct("2007-02-03")), 
     labels = c("Thu","Fri","Sat"))
axis(2, at = c(0:5 * 0.1))
dev.off()
