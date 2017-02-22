source("common.R")
source("plot2.R")
source("plot3.R")

plot4 <- function(data) {
    par(mfrow = c(2, 2))
    with(data, {
        plot2(data, 'Global Active Power')
        
        plot(Voltage, 
             type="l", 
             xlab = "datetime", 
             xaxt = "n")
        tickDistance <- nrow(data)/2
        tickmarks <- 0:2
        axis(1, at = tickDistance*tickmarks, labels = c("Thu", "Fri", "Sat"))
        
        plot3(data)
        
        plot(Global_reactive_power, 
             type="l", 
             xlab = "datetime", 
             xaxt = "n")
        tickDistance <- nrow(data)/2
        tickmarks <- 0:2
        axis(1, at = tickDistance*tickmarks, labels = c("Thu", "Fri", "Sat"))
    })
}

saveAsImage(data, 'plot4.png', plot4)