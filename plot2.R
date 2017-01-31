## Read in the data for the plots.
setwd("~/Desktop/Coursera/ExploratoryP2/exdata%2Fdata%2FNEI_data/")
pm25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Question: Have total emissions from PM2.5 decreased in the Baltimore City, 
## Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Using the base plotting system, a 
## plot was created to answer this question.

library(dplyr)

Baltimore <- subset(pm25, pm25$fips == "24510")
TotalbyYear <- summarize(group_by(Baltimore, year), Total.Emissions = sum(Emissions, rm.na = T))
png('plot2.png')
par(mar=c(5.1,6.1,4.1,2.1))
barplot(height = TotalbyYear$Total.Emissions, 
        names.arg = TotalbyYear$year, 
        xlab = "Years", 
        ylab = expression('Total PM'[2.5]*' Emission'),
        main = expression('Total PM'[2.5]*' Emissions - Baltimore'))
dev.off()
