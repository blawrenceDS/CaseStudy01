library(dplyr)

rank <- 13

DataSortbyGDP <- arrange(GDP_EDU_data,desc(as.numeric(GDP_Rank)))

Country_GDP_Rank <- as.vector(DataSortbyGDP[[rank,4]])

Country_GDP_Rank
