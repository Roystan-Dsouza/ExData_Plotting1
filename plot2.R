#Loading the data
electric_data <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
                            header = TRUE, sep = ";", skip = 66637, nrow = 2880,
                            col.names = colnames(read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
                            nrow = 1, header = TRUE, sep = ";")))

#Converting the Date and Time variables to Date/Time classes using strptime()
datetime <- strptime(paste(electric_data$Date, electric_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Creating a PNG file to save the plot to it
png(file = "plot2.png", width = 480, height = 480)

#Constructing the plot
plot(datetime,electric_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()