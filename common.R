setwd('/Users/freddiekarlbom/dev/coursera/exploratory/week1/project')

library(dplyr)

getData <- function(src) {
    data <- read.table(src, header=TRUE, sep= ";", na.strings="?")
}

filterData <- function(data) {
    data$Date <- data$Date %>% strptime("%e/%m/%Y") %>% as.Date()
    filteredData <- data %>% filter(Date >= "2007-02-01" & Date <= "2007-02-02")
}

saveAsImage <- function(data, name, FUN) {
    png(filename = name,
        width = 480, 
        height = 480, 
        units = "px", 
        pointsize = 12,
        bg = "transparent")
    
    FUN(data)
    
    dev.off()
}

if ( ! exists("data", inherits = FALSE) ) {
    data <- getData('../household_power_consumption.txt') %>% filterData()
}