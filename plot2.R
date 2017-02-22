source("common.R")

plot2 <- function(data, label = "Global Active Power (kilowatts)") {
    plot(data$Global_active_power, 
         type="l",
         ylab = label,
         xaxt = "n",
         xlab = ""
    )
    
    tickDistance <- nrow(data)/2
    tickmarks <- 0:2
    axis(1, at = tickDistance*tickmarks, labels = c("Thu", "Fri", "Sat"))
}

saveAsImage(data, 'plot2.png', plot2)