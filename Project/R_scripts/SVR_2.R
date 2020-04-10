library('e1071')
library(readr)
library(ggplot2)

X1_Bitcoin <- read_csv('Data/Coins/1_Bitcoin.csv')
X2_Ethereum <- read_csv('Data/Coins/2_Ethereum.csv')
X3_XRP <- read_csv('Data/Coins/3_XRP.csv')
X4_Bitcoin_Cash <- read_csv('Data/Coins/4_Bitcoin_Cash.csv')
X5_Tether <- read_csv('Data/Coins/5_Tether.csv')
X6_Bitcoin_SV <- read_csv('Data/Coins/6_Bitcoin_SV.csv')
X7_Litecoin <- read_csv('Data/Coins/7_Litecoin.csv')
X8_EOS <- read_csv('Data/Coins/8_EOS.csv')
X9_Binance_Coin <- read_csv('Data/Coins/9_Binance_Coin.csv')
X10_Tezos <- read_csv('Data/Coins/10_Tezos.csv')
X11_Chainlink <- read_csv('Data/Coins/11_Chainlink.csv')
X12_Cardano <- read_csv('Data/Coins/12_Cardano.csv')
X13_Stellar <- read_csv('Data/Coins/13_Stellar.csv')
X15_TRON <- read_csv('Data/Coins/15_TRON.csv')
X15_UNUS_SED_LEO <- read_csv('Data/Coins/15_UNUS_SED_LEO.csv')
X14_Monero <- read_csv('Data/Coins/14_Monero.csv')
X17_Huobi_Token <- read_csv('Data/Coins/17_Huobi_Token.csv')
X18_Ethereum_Classic <- read_csv('Data/Coins/18_Ethereum_Classic.csv')
X19_Dash <- read_csv('Data/Coins/19_Dash.csv')
X20_Crypto.com_Coin <- read_csv('Data/Coins/20_Crypto.com_Coin.csv')
X21_Neo <- read_csv('Data/Coins/21_Neo.csv')
X22_HedgeTrade <- read_csv('Data/Coins/22_HedgeTrade.csv')
X23_Cosmos <- read_csv('Data/Coins/23_Cosmos.csv')
X24_IOTA <- read_csv('Data/Coins/24_IOTA.csv')
X25_Maker <- read_csv('Data/Coins/25_Maker.csv')
X26_USD_Coin <- read_csv('Data/Coins/26_USD_Coin.csv')
X27_NEM <- read_csv('Data/Coins/27_NEM.csv')
X28_Zcash <- read_csv('Data/Coins/28_Zcash.csv')
X29_Ontology <- read_csv('Data/Coins/29_Ontology.csv')
X30_Basic_Attention_Token <- read_csv('Data/Coins/30_Basic_Attention_Token.csv')
X31_Dogecoin <- read_csv('Data/Coins/31_Dogecoin.csv')
X32_OKB <- read_csv('Data/Coins/32_OKB.csv')
X33_VeChain <- read_csv('Data/Coins/33_VeChain.csv')
X34_FTX_Token <- read_csv('Data/Coins/34_FTX_Token.csv')
X35_Paxos_Standard <- read_csv('Data/Coins/35_Paxos_Standard.csv')
X36_Qtum <- read_csv('Data/Coins/36_Qtum.csv')
X37_Algorand <- read_csv('Data/Coins/37_Algorand.csv')
X38_Decred <- read_csv('Data/Coins/38_Decred.csv')
X39_Bitcoin_Gold <- read_csv('Data/Coins/39_Bitcoin_Gold.csv')
X40_ICON <- read_csv('Data/Coins/40_ICON.csv')
X41_Hedera_Hashgraph <- read_csv('Data/Coins/41_Hedera_Hashgraph.csv')

volt <- cbind(X1_Bitcoin$VolumeTraded[1:919], X2_Ethereum$VolumeTraded[1:919], X3_XRP$VolumeTraded[1:919], X4_Bitcoin_Cash$VolumeTraded[1:919], X7_Litecoin$VolumeTraded[1:919], X8_EOS$VolumeTraded[1:919], X9_Binance_Coin$VolumeTraded[1:919], X15_TRON$VolumeTraded[1:919])
marketc <- cbind(X1_Bitcoin$MarketCap[1:919], X2_Ethereum$MarketCap[1:919], X3_XRP$MarketCap[1:919], X4_Bitcoin_Cash$MarketCap[1:919], X7_Litecoin$MarketCap[1:919], X8_EOS$MarketCap[1:919], X9_Binance_Coin$MarketCap[1:919], X15_TRON$MarketCap[1:919])

predictor_matrix <- cbind(volt, marketc)


crypto <- read_csv("Data/crypto.csv")
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


data <- data.frame(cbind(predict30_X5Tether,Final_Tether30Days$MarketCap[1:30] ))
colnames(data) <- c("predicted", "real")

g <- ggplot(data, aes(x=time30)) + 
      geom_line(aes(y=data$predicted), color = "darkred") +
      geom_line(aes(y=data$real), color="steelblue", linetype = "twodash")+
      labs(title = "Tether's Market Cap Prediction", x = "days", y ="Market Cap")

g

data <- data.frame(cbind(predict30_X5Tether,Final_Tether30Days$MarketCap[1:30] ))
colnames(data) <- c("predicted", "real")

data$real <- rev(data$real)

for( i in 1:30){
  data$real[i] = data$real[i]- 7471671
}




g <- ggplot(data, aes(x=time30)) + 
  geom_line(aes(y=data$predicted), color = "darkred") +
  geom_line(aes(y=data$real), color="steelblue", linetype = "twodash")+
  labs(title = "Tether's Market Cap Prediction", x = "days", y ="Market Cap")

g

