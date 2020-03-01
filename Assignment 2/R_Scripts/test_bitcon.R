library(ggplot2)
library(lubridate)
theme_set(theme_minimal())

#Cryptocurrency data
data <- read_csv(X1_Bitcoin)

# Demo dataset
head(data)

# Basic line plot
ggplot(data = X1_Bitcoin, aes(x = X1_Bitcoin$Date, y = X1_Bitcoin$MarketCap))+
  geom_line(color = "#00AFBB", size = 1)

