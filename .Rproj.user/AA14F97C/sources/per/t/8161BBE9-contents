#Libraries
library(tidyverse)
library(ggplot2)
library(reshape2)
library(scales)
library(lubridate)

#Cryptocurrency data
data <- read.csv(file.choose(), header = T)
str(data)
head(data)
data$Date <- dmy(data$Date)

#Plotting the graphs

#Closing prices vs Time
qplot(Date, Closes.at., data = data, main = 'Ethereum Closing prices over time') +
  xlab('Date') + ylab('Closing Prices')

#Opening prices vs Time
qplot(Date, Opens.at., data = data, main = 'Ethereum Opening prices over time') +
  xlab('Date') + ylab('Opening Prices')

#Volume vs Time
qplot(Date, Volume.Traded., data = data, main = 'Ethereum Volume over time') +
  xlab('Date') + ylab('Volume')

#Market Cap vs Time
qplot(Date, Market.Cap., data = data, main = 'Ethereum Market Cap over time',) +
  xlab('Date') + ylab('Market Cap')


#Graph Creation (Normal & Log)


#Scientific to numerical notation
options(scipen = 999)

data <- Bitcoin #Coin file
data$Date <- dmy(data$Date)

#Normal portion
meltdata <- melt(data,id="Date")
ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()

#Log portion
lg <- ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()

lg + scale_y_continuous(trans = log10_trans())