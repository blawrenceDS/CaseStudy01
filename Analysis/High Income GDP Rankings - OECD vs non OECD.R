library(plyr)

GDP_Rank_by_Income <- aggregate.data.frame(GDP_EDU_data[,3:4], by = list("High income: OECD","Low income","Lower middle income","Upper middle income","High income: nonOECD",""),FUN= mean)

GDP_Rank_by_Income
