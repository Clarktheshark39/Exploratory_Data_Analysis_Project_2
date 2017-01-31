# Exploratory_Data_Analysis_Project_2
## Course Project 2

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.
𝚏𝚒𝚙𝚜: A five-digit number (represented as a string) indicating the U.S. county
𝚂𝙲𝙲: The name of the source as indicated by a digit string (see source code classification table)
𝙿𝚘𝚕𝚕𝚞𝚝𝚊𝚗𝚝: A string indicating the pollutant
𝙴𝚖𝚒𝚜𝚜𝚒𝚘𝚗𝚜: Amount of PM2.5 emitted, in tons
𝚝𝚢𝚙𝚎: The type of source (point, non-point, on-road, or non-road)
𝚢𝚎𝚊𝚛: The year of emissions recorded
Source Classification Code Table (𝚂𝚘𝚞𝚛𝚌𝚎_𝙲𝚕𝚊𝚜𝚜𝚒𝚏𝚒𝚌𝚊𝚝𝚒𝚘𝚗_𝙲𝚘𝚍𝚎.𝚛𝚍𝚜): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

## Questions

For each question/task, there will be a single plot.

1) Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? With the base plotting system, a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008 was created.

2) Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Using the base plotting system, a plot was created to answer this question.

3) Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Using the ggplot2 plotting system, a plot has been made to answer this question.

4) Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

5) How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

6) Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city has seen greater changes over time in motor vehicle emissions? 
