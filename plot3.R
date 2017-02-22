source("common.R")

plot3 <- function(data) {
    with(data, plot(Sub_metering_1, 
                    type = "n",
                    ylab = "Energy sub metering",
                    xlab = "",
                    xaxt = "n"
    ))
    with(data, points(Sub_metering_1, type="l", col = "black"))
    with(data, points(Sub_metering_2, type="l", col = "red"))
    with(data, points(Sub_metering_3, type="l", col = "blue"))
    legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    tickDistance <- nrow(data)/2
    tickmarks <- 0:2
    axis(1, at = tickDistance*tickmarks, labels = c("Thu", "Fri", "Sat"))
}

saveAsImage(data, 'plot3.png', plot3)