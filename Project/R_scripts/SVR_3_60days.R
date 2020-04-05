library('e1071')

crypto <- read_csv("~/Desktop/ECON422_R_Project/crypto.csv")
crypto$day <- 1:869

#Forecasting for next 60 days of 1Bitcoin

svmodel <- svm(X1_Bitcoin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_60days <- 870:899
predict60_1BitcoinMC <- predict(svmodel, newdata=data.frame(day=range_60days))


#Forecasting for next 60 days of TRON

svmodel <- svm(X15_TRON$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_15TRONMC <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 4BitcoinCash

svmodel <- svm(X4_Bitcoin_Cash$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_4BitcoinCashMC <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 7Litecoin

svmodel <- svm(X7_Litecoin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_60days <- 870:899
predict60_7LitecoinMC <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 8EOS

svmodel <- svm(X8_EOS$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_60days <- 870:899
predict60_8EOSMC <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 9BinanceCoin

svmodel <- svm(X9_Binance_Coin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_9BinanceCoinMC <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of TRON

svmodel <- svm(X15_TRON$VolumeTraded[1:869] ~ day,data=day, type="eps-regression",kernel="radial",cost=10000, gamma=10)

#Forecasting for next 60 days of 16Monero

svmodel <- svm(X14_Monero$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_16Monero <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 16Monero

svmodel <- svm(X1_Bitcoin$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_1BitcoinVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of TRON

svmodel <- svm(X15_TRON$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

range_60days <- 870:899
predict60_15TRONVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 2Ethereum

svmodel <- svm(X2_Ethereum$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_2EthereumVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 2Ethereum

range_60days <- 870:929
predict60_2EthereumVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 3XRP

svmodel <- svm(X3_XRP$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899

predict60_3XRPVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 4BitcoinCash

svmodel <- svm(X4_Bitcoin_Cash$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_4BitcoinCashVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 7Litecoin

svmodel <- svm(X7_Litecoin$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_7LitecoinVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 8EOS

svmodel <- svm(X8_EOS$VolumeTraded[1:869] ~ day,data=day, type="eps-regression",kernel="radial",cost=10000, gamma=10)
svmodel <- svm(X8_EOS$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_8EOSVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 60 days of 9BinanceCoin

svmodel <- svm(X9_Binance_Coin$VolumeTraded[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_60days <- 870:899
predict60_9BinanceCoinVT <- predict(svmodel, newdata=data.frame(day=range_60days))

#Predicting 5_Tether using SVM regression and other Crypto-currencies for 60 days

svmodel <- svm(X5_Tether$MarketCap[1:869] ~ X4_Bitcoin_Cash$MarketCap[1:869] + X1_Bitcoin$MarketCap[1:869] + X7_Litecoin$MarketCap[1:869] +
                 X8_EOS$MarketCap[1:869] + X9_Binance_Coin$MarketCap[1:869]	+  X4_Bitcoin_Cash$VolumeTraded[1:869] + 
                 X1_Bitcoin$VolumeTraded[1:869] + X7_Litecoin$VolumeTraded[1:869] + X8_EOS$VolumeTraded[1:869] + 
                 X9_Binance_Coin$VolumeTraded[1:869]	+ X2_Ethereum$VolumeTraded[1:869] + X3_XRP$VolumeTraded[1:869], 
               data=day, type="eps-regression",kernel="radial",cost=10000, gamma=10)

svmodel

predict60_X5Tether <- predict(svmodel, newdata = data.frame(X4BitcoinCashMC = predict60_4BitcoinCashMC, X4BitcoinCashVT = predict60_4BitcoinCashVT,
                                                            X3XRPVT = predict60_3XRPVT,X2EthereumVT = predict60_2EthereumVT,
                                                            X1BitcoinMC = predict60_1BitcoinMC, X1BitcoinVT = predict60_1BitcoinVT,
                                                            X7LitecoinMC = predict60_7LitecoinMC, X7LitecoinVT = predict60_7LitecoinVT,
                                                            X8EOSMC = predict60_8EOSMC,	X8EOSMC = predict60_8EOSVT,	
                                                            X9BinanceCoinMC = predict60_9BinanceCoinMC, X9BinanceCoinMC = predict60_9BinanceCoinMC))[1:60]

predict60_X5Tether
time60 <- 1:60
plot(time60, predict60_X5Tether)




