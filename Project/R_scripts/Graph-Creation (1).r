#Remove all items
rm(list=ls(all=TRUE))

#Libraries
library(readr)
library(lubridate)
library(ggplot2)
library(reshape2)
library(scales)
options(scipen = 100)
theme_set(theme_minimal())

#Data
data <- read_csv(file.choose())

#If Date variable is off, use:
data$Date <- dmy(data$Date) 

#Multiple
meltdata <- melt(data,id="Date")
ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()
#Log Multiple
lg <- ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()

lg + scale_y_continuous(trans = log10_trans())




######### This is to create the single line plot######

#Single Line Plot (Market Cap)
ggplot(data = data, aes(x = Date, y = MarketCap, group = 1))+
  geom_line(color = "darkred", size = 0.5)

#Single Line Plot (Market Cap Log Scale) 
slg2 <- ggplot(data = data, aes(x = Date, y = MarketCap, group = 1))+
  geom_line(color = "darkred", size = 0.5)

slg2 + scale_y_continuous(trans = log10_trans())