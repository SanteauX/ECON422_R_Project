library('e1071')

crypto <- read_csv("~/Desktop/ECON422_R_Project/crypto.csv")
crypto$day <- 1:869

#Forecasting for next 30 days of 1Bitcoin

svmodel <- svm(X1_Bitcoin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_1Bitcoin <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 1Bitcoin

range_60days <- 870:929
predict60_1Bitcoin <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 2Ethereum

svmodel <- svm(X2_Ethereum$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_2Ethereum <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 2Ethereum

range_60days <- 870:929
predict60_2Ethereum <- predict(svmodel, newdata=data.frame(day=range_60days))


#Forecasting for next 30 days of 3XRP

svmodel <- svm(X3_XRP$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899

predict30_3XRP <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 3XRP

range_60days <- 870:929

predict60_3XRP <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 4BitcoinCash

svmodel <- svm(X4_Bitcoin_Cash ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_4BitcoinCash <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 4BitcoinCash

range_60days <- 870:929
predict60_4BitcoinCash <- predict(svmodel, newdata=data.frame(day=range_60days))


#Forecasting for next 30 days of 7Litecoin

svmodel <- svm(X7_Litecoin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_7Litecoin <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 7Litecoin

range_60days <- 870:929
predict60_7Litecoin <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 8EOS

svmodel <- svm(X8_EOS$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_8EOS <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 8EOS

range_60days <- 870:929
predict60_8EOS <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 9BinanceCoin

svmodel <- svm(X9_Binance_Coin$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_9BinanceCoin <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 9BinanceCoin

range_60days <- 870:929
predict60_9BinanceCoin <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 11Chainlink

svmodel <- svm(X11_Chainlink$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_11Chainlink <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 11Chainlink

range_60days <- 870:929
predict60_11Chainlink <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 13Stellar

svmodel <- svm(X13_Stellar$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_13Stellar <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 13Stellar

range_60days <- 870:929
predict60_13Stellar <- predict(svmodel, newdata=data.frame(day=range_60days))

#Forecasting for next 30 days of 16Monero

svmodel <- svm(X16_Monero$MarketCap[1:869] ~ day,data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)
range_30days <- 870:899
predict30_16Monero <- predict(svmodel, newdata=data.frame(day=range_30days))

#Forecasting for next 60 days of 16Monero

range_60days <- 870:929
predict60_16Monero <- predict(svmodel, newdata=data.frame(day=range_60days))

#Predicting 5_Tether using SVM regression and other Crypto-currencies for 30 days

svmodel <- svm(X5_Tether$MarketCap[1:869] ~ X4_Bitcoin_Cash$MarketCap[1:869] + 	X3_XRP$MarketCap[1:869]	+ X1_Bitcoin$MarketCap[1:869] + 	X2_Ethereum$MarketCap[1:869]	+ X7_Litecoin$MarketCap[1:869] + X8_EOS$MarketCap[1:869] + X9_Binance_Coin$MarketCap[1:869]	+ X11_Chainlink$MarketCap[1:869]	+ X13_Stellar$MarketCap[1:869] + X14_Monero$MarketCap[1:869], data=crypto, type="eps-regression",kernel="radial",cost=10000, gamma=10)

predict30_X5Tether <- predict(svmodel, newdata = data.frame(X4BitcoinCash = predict30_4BitcoinCash, 	X3XRP = predict30_3XRP, X1Bitcoin = predict30_3XRP,	X2Ethereum = predict30_2Ethereum, 	X7Litecoin = predict30_7Litecoin, 	X8EOS = predict30_8EOS,	X9BinanceCoin = predict30_9BinanceCoin, 	X11Chainlink = predict30_11Chainlink, X13Stellar = predict30_13Stellar,	X16Monero = predict30_16Monero))

predict30_X5Tether
time30 <- 1:30
plot(time30, predict30_X5Tether)


#Predicting 5_Tether using SVM regression and other Crypto-currencies for 60 days

predict60_X5Tether <- predict(svmodel, newdata = data.frame(X4BitcoinCash = predict60_4BitcoinCash, 	X3XRP = predict60_3XRP, X1Bitcoin = predict60_3XRP,	X2Ethereum = predict60_2Ethereum, 	X7Litecoin = predict60_7Litecoin, 	X8EOS = predict60_8EOS,	X9BinanceCoin = predict60_9BinanceCoin, 	X11Chainlink = predict60_11Chainlink, X13Stellar = predict60_13Stellar,	X16Monero = predict60_16Monero))
predict60_X5Tether
time60 <- 1:60
plot(time60, predict60_X5Tether)


