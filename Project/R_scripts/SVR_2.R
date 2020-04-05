library('e1071')

crypto <- read_csv("~/Desktop/ECON422_R_Project/crypto.csv")
crypto$day <- 1:869
Final_Tether30Days <- read_csv("Data/Final_Tether30Days.csv")

#Forecasting for next 30 days of 1Bitcoin

svmodel <- svm(X1_Bitcoin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_30days <- 870:899
predict30_1BitcoinMC <- predict(svmodel, newdata=data.frame(day=range_30days))


#Forecasting for next 30 days of TRON

svmodel <- svm(X15_TRON$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_15TRONMC <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 4BitcoinCash

svmodel <- svm(X4_Bitcoin_Cash$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_4BitcoinCashMC <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 7Litecoin

svmodel <- svm(X7_Litecoin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_30days <- 870:899
predict30_7LitecoinMC <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 8EOS

svmodel <- svm(X8_EOS$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_30days <- 870:899
predict30_8EOSMC <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 9BinanceCoin

svmodel <- svm(X9_Binance_Coin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_9BinanceCoinMC <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of TRON

svmodel <- svm(X15_TRON$VolumeTraded[1:869] ~ day,data=day, type="eps-regression",kernel="radial",cost=10000, gamma=10)

#Forecasting for next 30 days of 16Monero

svmodel <- svm(X14_Monero$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_16Monero <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 16Monero

svmodel <- svm(X1_Bitcoin$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_1BitcoinVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of TRON

svmodel <- svm(X15_TRON$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_30days <- 870:899
predict30_15TRONVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 2Ethereum

svmodel <- svm(X2_Ethereum$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_2EthereumVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 2Ethereum

range_60days <- 870:929
predict60_2EthereumVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 3XRP

svmodel <- svm(X3_XRP$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899

predict30_3XRPVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 4BitcoinCash

svmodel <- svm(X4_Bitcoin_Cash$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_4BitcoinCashVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 7Litecoin

svmodel <- svm(X7_Litecoin$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_7LitecoinVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 8EOS

svmodel <- svm(X8_EOS$VolumeTraded[1:869] ~ day,data=day, type="eps-regression",kernel="radial",cost=10000, gamma=10)
svmodel <- svm(X8_EOS$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_8EOSVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 30 days of 9BinanceCoin

svmodel <- svm(X9_Binance_Coin$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_9BinanceCoinVT <- predict(svmodel, newdata=data.frame(day=range_30days))

#Predicting 5_Tether using SVM regression and other Crypto-currencies for 30 days

svmodel <- svm(X5_Tether$MarketCap[1:869] ~ X4_Bitcoin_Cash$MarketCap[1:869] + X1_Bitcoin$MarketCap[1:869] + X7_Litecoin$MarketCap[1:869] +
                X8_EOS$MarketCap[1:869] + X9_Binance_Coin$MarketCap[1:869]	+  X4_Bitcoin_Cash$VolumeTraded[1:869] + 
                X1_Bitcoin$VolumeTraded[1:869] + X7_Litecoin$VolumeTraded[1:869] + X8_EOS$VolumeTraded[1:869] + 
                X9_Binance_Coin$VolumeTraded[1:869]	+ X2_Ethereum$VolumeTraded[1:869] + X3_XRP$VolumeTraded[1:869], 
                 data=day, type="eps-regression",kernel="radial",cost=10000, gamma=10)

svmodel

predict30_X5Tether <- predict(svmodel, newdata = data.frame(X4BitcoinCashMC = predict30_4BitcoinCashMC, X4BitcoinCashVT = predict30_4BitcoinCashVT,
                                                            X3XRPVT = predict30_3XRPVT,X2EthereumVT = predict30_2EthereumVT,
                                                            X1BitcoinMC = predict30_1BitcoinMC, X1BitcoinVT = predict30_1BitcoinVT,
                                                            X7LitecoinMC = predict30_7LitecoinMC, X7LitecoinVT = predict30_7LitecoinVT,
                                                            X8EOSMC = predict30_8EOSMC,	X8EOSMC = predict30_8EOSVT,	
                                                            X9BinanceCoinMC = predict30_9BinanceCoinMC, X9BinanceCoinMC = predict30_9BinanceCoinMC))[1:30]

predict30_X5Tether
time30 <- 1:30
plot(time30, predict30_X5Tether)

p <- ggplot(aes(x = time30) +
  geom_line(aes(y = predict30_X5Tether), color = "darkred") 
  + labs(title = "Tether's Market Cap Prediction", x = "days", y ="Market Cap"))
                          
p

e <- ggplot(economics, aes(x=date)) + geom_line(aes(y=psavert), color = "darkred") +
  geom_line(aes(y=uempmed), color="steelblue", linetype = "twodash")

e

data <- data.frame(cbind(predict30_X5Tether,Final_Tether30Days$MarketCap[1:30] ))
colnames(data) <- c("predicted", "real")

g <- ggplot(data, aes(x=time30)) + 
      geom_line(aes(y=data$predicted), color = "darkred") +
      geom_line(aes(y=data$real), color="steelblue", linetype = "twodash")+
      labs(title = "Tether's Market Cap Prediction", x = "days", y ="Market Cap")

g







