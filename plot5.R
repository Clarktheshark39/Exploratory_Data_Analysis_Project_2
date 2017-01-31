## Read in the data for the plots.
setwd("~/Desktop/Coursera/ExploratoryP2/exdata%2Fdata%2FNEI_data/")
pm25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Question: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

library(ggplot2)

## Subset by source.
motor <- subset(pm25, fips=="24510" & type=="ON-ROAD")

TotalbyYear <- summarize(group_by(motor, year), Total.Emissions = sum(Emissions, rm.na = T))

png("plot5.png", width=840, height=480)
ggplot(TotalbyYear, aes(factor(year), Total.Emissions)) + 
  geom_bar(stat = "identity") +
  xlab("Year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions from Motor Vehicle (type = ON-ROAD) in Baltimore City, MD') +
  theme(plot.title = element_text(hjust = 0.5))
dev.off()