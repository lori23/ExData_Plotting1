## Read in full dataset
data<-read.table('household_power_consumption.txt', header=TRUE,sep=";",na.strings="?")

## Make sure the date format is accurate
data$Date<-as.Date(data$Date,format="%d/%m/%Y")

## Select only the two days that need to be analyzed
data_sub<-subset(data, subset=(Date>="2007-02-01" & Date<="2007-02-02"))
rm(data)

## Plot 1
hist(data_sub$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab="Frequency")

## Saving to file
dev.copy(png, file="plot1.png",height=480, width=480)
dev.off()
