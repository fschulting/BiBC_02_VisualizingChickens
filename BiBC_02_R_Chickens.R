library(ggplot2)

setwd("~/Desktop")
chicken_data <- read.csv("Scorings.csv",sep = ";")

chicken_data$Color[chicken_data$Color == ''] <- 'Unknown'

chicken_data$Date <- factor(chicken_data$Date, levels=c('30/04/2020','08/08/2020','29/08/2020', '06/09/2020'))

ggplot(data = chicken_data, aes(x = Date, y = Weight, color = Sex, shape = Color)) + 
  geom_jitter(width=0.25, size=3)
