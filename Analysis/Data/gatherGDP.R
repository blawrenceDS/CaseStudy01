library(data.table)
library(dplyr)
library(plyr)

rawGDPdata <- fread('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv', nrows = 195)
  
GDPdata <- rawGDPdata[-c(1,2,3,4)]
GDPdata <- GDPdata[-c(191:326)]
colnames(GDPdata) <- c("CountryCode","GDP_Rank","B1","CountryName","GDP_Nom","B2","B3","B4","B5","B6")

tidyGDPdata <- subset(GDPdata, select = c("CountryCode","GDP_Rank","CountryName","GDP_Nom"))

tidyGDPdata$GDP_Nom <- as.numeric(gsub(",","",tidyGDPdata$GDP_Nom))
tidyGDPdata$GDP_Rank <- as.numeric(tidyGDPdata$GDP_Rank)
