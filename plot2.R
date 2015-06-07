library(sqldf)
library(lubridate)
png(filename = "plot2.png", width = 480, height = 480, units = "px")
household <- read.csv.sql('household_power_consumption.txt', sql = "select * from file where Date in ('1/2/2007', '2/2/2007')", header = TRUE, sep =";",stringsAsFactors=FALSE)
closeAllConnections()
household$datetime <- dmy_hms(paste(household$Date, household$Time))
plot(household$datetime,  household$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off()
 