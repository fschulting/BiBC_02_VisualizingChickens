library(ggplot2)

setwd("~/Desktop")
raw_data <- read.csv("Scorings.csv",sep = ";")
chicken_data <- na.omit(raw_data)
chicken_data


ggplot(data = chicken_data) + 
  geom_point(mapping = aes(x = Head, y = Feet))


