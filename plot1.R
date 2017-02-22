source("common.R") 

plot1 <- function(data) {
    hist(data$Global_active_power, 
         col = "red", 
         main = "Global Active Power", 
         xlab = "Global Active Power (kilowatts)")
}

saveAsImage(data, 'plot1.png', plot1)