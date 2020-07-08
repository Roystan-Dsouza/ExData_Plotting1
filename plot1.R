#Loading the data
electric_data <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
                            header = TRUE, sep = ";", skip = 66637, nrow = 2880,
                            col.names = colnames(read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
                            nrow = 1, header = TRUE, sep = ";")))

#Creating a PNG file to save the plot to it
png(file = "plot1.png", width = 480, height = 480)

#Constructing the plot
hist(electric_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()