#Graph Creation (Normal & Log)

#Libraries
library(tidyverse)
library(ggplot2)
library(reshape2)
library(scales)
library(lubridate)

#Scientific to numerical notation
options(scipen = 999)

data <- Monero #Coin file
data$Date <- dmy(data$Date)

#Normal portion
meltdata <- melt(data,id="Date")
ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()

#Log portion
lg <- ggplot(meltdata,aes(x=Date,y=value,colour=variable,group=variable)) +
  geom_line()

lg + scale_y_continuous(trans = log10_trans())

