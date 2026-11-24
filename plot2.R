pdf(file = "plot2.pdf")

plot(febElectricData$Date, febElectricData$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     axes = FALSE
     )
axis(1, at = c(as.POSIXct("2007-02-01"),as.POSIXct("2007-02-02"),as.POSIXct("2007-02-03")), 
     labels = c("Thu","Fri","Sat"))
axis(2, at = c(2*-1:4))

dev.off()
