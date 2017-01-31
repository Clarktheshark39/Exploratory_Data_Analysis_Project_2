## Read in the data for the plots.
setwd("~/Desktop/Coursera/ExploratoryP2/exdata%2Fdata%2FNEI_data/")
pm25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Question: Across the United States, how have emissions from coal combustion-related sources changed 
## from 1999–2008?

library(ggplot2)
library(dplyr)

## Join the data together.
SCC$SCC <- as.character(SCC$SCC)
pm25 <- select(pm25, Emissions, SCC, year)
SCC <- select(SCC, SCC, Short.Name)
master <- left_join(pm25, SCC, by = "SCC")

## Select out the data with coal combustion related sources.
coalSubset <- grepl("coal", master$Short.Name, ignore.case = T)
coal <- master[coalSubset, ]

TotalbyYear <- summarize(group_by(coal, year), Total.Emissions = sum(Emissions, rm.na = T))

png("plot4.png", width=640, height=480)
ggplot(TotalbyYear, aes(factor(year), Total.Emissions)) +
  geom_bar(stat = "identity") +
  xlab("Year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions from Coal Sources') +
  theme(plot.title = element_text(hjust = 0.5))
dev.off()

