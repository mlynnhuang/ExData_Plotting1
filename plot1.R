library(sqldf)
library(lubridate)
png(filename = "plot1.png", width = 480, height = 480, units = "px")
household <- read.csv.sql('household_power_consumption.txt', sql = "select * from file where Date in ('1/2/2007', '2/2/2007')", header = TRUE, sep =";",stringsAsFactors=FALSE)
closeAllConnections()
hist(household$Global_active_power, main="Global Active Power", 
       xlab="Global Active Power (killowatts)", 
       col="orangered3")
dev.off()