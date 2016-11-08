
Income_Group_Avg_Ranks <- setNames(aggregate(GDP_EDU_data$GDP_Rank, 
                                             by = list(GDP_EDU_data$`Income Group`),
                                             mean),c("Income Group","Average Rank"))

Income_Group_Avg_Ranks$`Average Rank` <- round(Income_Group_Avg_Ranks$`Average Rank`, 0)
Income_Group_Avg_Ranks