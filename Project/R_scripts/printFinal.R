library(readr)
library(ggplot2)
library(tidyverse)
library(reshape2)
library(scales)
library(lubridate)
options(scipen = 999)


Final_Tether <- read_csv("Final_Tether.csv")

ggplot(data = Final_Tether, aes(x = Date, y = MarketCap))+
  geom_line(color = "#00AFBB", size = 2)


###################################################################





lg <- ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()

lg + scale_y_continuous(trans = log10_trans())

