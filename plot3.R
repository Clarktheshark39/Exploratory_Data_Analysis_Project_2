## Read in the data for the plots.
setwd("~/Desktop/Coursera/ExploratoryP2/exdata%2Fdata%2FNEI_data/")
pm25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable,
## which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
## Which have seen increases in emissions from 1999–2008? Using the ggplot2 plotting system, a plot has 
## been made to answer this question.

library(ggplot2)
library(dplyr)

Baltimore <- subset(pm25, pm25$fips == "24510")
TotalbyYear <- summarize(group_by(Baltimore, year, type), Total.Emissions = sum(Emissions, rm.na = T))

png("plot3.png", width=640, height=480)
ggplot(TotalbyYear, aes(year, Total.Emissions)) +
  geom_line() +
  xlab("Year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions in Baltimore City, MD') +
  facet_grid(. ~ type) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1) +
  theme(plot.title = element_text(hjust = 0.5)))
dev.off()




