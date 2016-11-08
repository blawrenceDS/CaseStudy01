library(ggplot2)

log_GDP_EDU_data <- data.frame("GDP_Rank" = as.numeric(GDP_EDU_data$GDP_Rank),
                               "Income_Group"= GDP_EDU_data$`Income Group`,
                               "Country" = GDP_EDU_data$CountryName,
                               "Log_GDP_Nom" = log(GDP_EDU_data$GDP_Nom))
log_GDP_EDU_data <- arrange(log_GDP_EDU_data,desc(as.numeric(GDP_Rank)))

xorder <- c("High income: OECD",
            "High income: nonOECD",
            "Upper middle income",
            "Lower middle income",
            "Low income")

ggplot(data = log_GDP_EDU_data, aes(x = log_GDP_EDU_data$Income_Group, 
                                    y = log_GDP_EDU_data$Log_GDP_Nom))+
  
  geom_point(stat = "identity", 
           aes(color = log_GDP_EDU_data$Income_Group))+
  ggtitle("GDP and Income Group")+
  labs(x = "Income Group",
    y = "GDP ($MM)")+
  guides(color=guide_legend("Income Group"))+
  scale_x_discrete(limits=xorder)
  
