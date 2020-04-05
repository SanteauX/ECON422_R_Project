#Libraries
library(xts)
library(readr)
library(lubridate)

# Load data
Final_Tether <- read_csv("Time Series/Project/Final_Tether.csv")
Final_Tether <- Final_Tether[nrow(Final_Tether):1, ]

dates <- seq(as.Date("2017-01-19"), length = nrow(Final_Tether), by = "days")

#Creating time series (xts object) # par 7ème colonne par example
Final_Tethter_xts <- xts::xts(x = Final_Tether[,7], order.by = dates)
plot(Final_Tethter_xts)

# Load data
Short_Tether <- read_csv("Short_Tether.csv")
Short_Tether <- Short_Tether[nrow(Short_Tether):1, ]

dates <- seq(as.Date("2020-01-01"), length = nrow(Short_Tether), by = "days")

#Creating time series (xts object) # par 7ème colonne par example
Short_Tethter_xts <- xts::xts(x = Short_Tether[,7], order.by = dates)
plot(Short_Tethter_xts)

