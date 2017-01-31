## Read in the data for the plots.
setwd("~/Desktop/Coursera/ExploratoryP2/exdata%2Fdata%2FNEI_data/")
pm25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Question: Compare emissions from motor vehicle sources in Baltimore City with emissions from 
## motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city 
## has seen greater changes over time in motor vehicle emissions?

library(ggplot2)

BaltLA <- subset(pm25, (fips=="24510" | fips=="06037") & type=="ON-ROAD")

TotalbyYear <- summarize(group_by(BaltLA, year, fips), Total.Emissions = sum(Emissions, rm.na = T))

TotalbyYear$fips[TotalbyYear$fips=="24510"] <- "Baltimore, MD"
TotalbyYear$fips[TotalbyYear$fips=="06037"] <- "Los Angeles, CA"

png("plot6.png", width=1040, height=480)
ggplot(TotalbyYear, aes(factor(year), Total.Emissions)) +
  facet_grid(. ~ fips) + 
  geom_bar(stat = "identity")  +
  xlab("Year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions from motor vehicle (type=ON-ROAD) in Baltimore City, MD vs Los Angeles, CA')
dev.off()