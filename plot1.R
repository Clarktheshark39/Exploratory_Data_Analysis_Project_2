## Read in the data for the plots.
setwd("~/Desktop/Coursera/ExploratoryP2/exdata%2Fdata%2FNEI_data/")
pm25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Question: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? With the 
## base plotting system, a plot showing the total PM2.5 emission from all sources for each of the years 
## 1999, 2002, 2005, and 2008 was created.

library(dplyr)

TotalbyYear <- summarize(group_by(pm25, year), Total.Emissions = sum(Emissions, rm.na = T))
png('plot1.png')
par(mar=c(5.1,6.1,4.1,2.1))
barplot(height = TotalbyYear$Total.Emissions, 
        names.arg = TotalbyYear$year, 
        xlab = "Years", 
        ylab = expression('Total PM'[2.5]*' Emission'),
        main = expression('Total PM'[2.5]*' Emissions'))
dev.off()