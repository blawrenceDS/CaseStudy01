library(data.table)

rawEDUdata <- fread('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv')

tidyEDUdata <- subset(rawEDUdata, select = c("CountryCode","Income Group"))
