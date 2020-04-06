#Multiple Linear Regression + SVR Prediction Metheod


#Libraries
library(e1071)
library(ggplot2)
library(readr)

#Data 

X1_BasicAttentionToken <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Basic%20Attention%20Token/Basic%20Attention%20Token.csv', header = TRUE, sep = ",")
X2_BinanceCoin <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Binance%20Coin/Binance%20Coin.csv', header = TRUE, sep = ",")
X3_Bitcoin <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Bitcoin/Bitcoin.csv', header = TRUE, sep = ",")
X4_BitcoinCash <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Bitcoin%20Cash/Bitcoin%20Cash.csv', header = TRUE, sep = ",")
X5_BitcoinSV <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Bitcoin%20SV/Bitcoin%20SV.csv', header = TRUE, sep = ",")
X6_Cardano <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Cardano/Cardano.csv', header = TRUE, sep = ",")
X7_Chainlink <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Chainlink/Chainlink.csv', header = TRUE, sep = ",")
X8_Cosmos <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Cosmos/Cosmos.csv', header = TRUE, sep = ",")
X9_Crypto.comCoin <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Crypto.com%20Coin/Crypto.com%20Coin.csv', header = TRUE, sep = ",")
X10_Dash <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Dash/Dash.csv', header = TRUE, sep = ",")
X11_Dogecoin <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Dogecoin/Dogecoin.csv', header = TRUE, sep = ",")
X12_EOS <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/EOS/EOS.csv', header = TRUE, sep = ",")
X13_Ethereum <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Ethereum/Ethereum.csv', header = TRUE, sep = ",")
X14_EthereumClassic <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Ethereum%20Classic/Ethereum%20Classic.csv', header = TRUE, sep = ",")
X15_HedgeTrade <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Hedge%20Trade/Hedge%20Trade.csv', header = TRUE, sep = ",")
X16_HuobiToken <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Huobi%20Token/Huobi%20Token.csv', header = TRUE, sep = ",")
X17_KickToken <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Kick%20Token/Kick%20Token.csv', header = TRUE, sep = ",")
X18_Litecoin <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Litecoin/Litecoin.csv', header = TRUE, sep = ",")
X19_Maker <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Maker/Maker.csv', header = TRUE, sep = ",")
X20_Monero <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Monero/Monero.csv', header = TRUE, sep = ",")
X21_NEM <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/NEM/NEM.csv', header = TRUE, sep = ",")
X22_Neo <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Neo/Neo.csv', header = TRUE, sep = ",")
X23_OKB <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/OKB/OKB.csv', header = TRUE, sep = ",")
X24_Ontology <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Ontology/Ontology.csv', header = TRUE, sep = ",")
X25_Stellar <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Stellar/Stellar.csv', header = TRUE, sep = ",")
X26_Tether <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Tether/Tether.csv', header = TRUE, sep = ",")
X27_Tezos <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Tezos/Tezos.csv', header = TRUE, sep = ",")
X28_TRON <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/TRON/TRON.csv', header = TRUE, sep = ",")
X29_UNUSSEDLEO <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/UNUS%20SED%20LEO/UNUS%20SED%20LEO.csv', header = TRUE, sep = ",")
X30_USDCoin <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/USD%20Coin/USD%20Coin.csv', header = TRUE, sep = ",")
X31_XRP <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/XRP/XRP.csv', header = TRUE, sep = ",")
X32_Zcash <- read.csv('https://raw.githubusercontent.com/SanteauX/ECON422_R_Project/master/Coins/Zcash/Zcash.csv', header = TRUE, sep = ",")


#Market Cap

Date_Range <- X26_Tether[1:286 , 1, drop = FALSE]
X1_BasicAttentionCoin_MC <- X1_BasicAttentionToken$MarketCap[1:286]
X2_BinanceCoin_MC <- X2_BinanceCoin$MarketCap[1:286]
X3_Bitcoin_MC <- X3_Bitcoin$MarketCap[1:286]
X4_BitcoinCash_MC <- X4_BitcoinCash$Market.Cap[1:286]
X5_BitcoinSV_MC <- X5_BitcoinSV$MarketCap[1:286]
X6_Cardano_MC <- X6_Cardano$MarketCap[1:286]
X7_Chainlink_MC <- X7_Chainlink$MarketCap[1:286]
X8_Cosmos_MC <- X8_Cosmos$MarketCap[1:286]
X9_Crypto.comCoin_MC <- X9_Crypto.comCoin$MarketCap[1:286]
X10_Dash_MC <- X10_Dash$MarketCap[1:286]
X11_Dogecoin_MC <- X11_Dogecoin$Market.Cap[1:286]
X12_EOS_MC <- X12_EOS$MarketCap[1:286]
X13_Ethereum_MC <- X13_Ethereum$MarketCap[1:286]
X14_EthereumClassic_MC <- X14_EthereumClassic$MarketCap[1:286]
X15_HedgeTrade_MC <- X15_HedgeTrade$MarketCap[1:286]
X16_HuobiToken_MC <- X16_HuobiToken$MarketCap[1:286]
X17_KickToken_MC <- X17_KickToken$MarketCap[1:286]
X18_Litecoin_MC <- X18_Litecoin$MarketCap[1:286]
X19_Maker_MC <- X19_Maker$MarketCap[1:286]
X20_Monero_MC <- X20_Monero$MarketCap[1:286]
X21_NEM_MC <- X21_NEM$MarketCap[1:286]
X22_Neo_MC <- X22_Neo$MarketCap[1:286]
X23_OKB_MC <- X23_OKB$MarketCap[1:286]
X24_Ontology_MC <- X24_Ontology$MarketCap[1:286]
X25_Stellar_MC <- X25_Stellar$MarketCap[1:286]
X26_Tether_MC <- X26_Tether$MarketCap[1:286]
X27_Tezos_MC <- X27_Tezos$MarketCap[1:286]
X28_TRON_MC <- X28_TRON$MarketCap[1:286]
X29_UNUSSEDLEO_MC <- X29_UNUSSEDLEO$MarketCap[1:286]
X30_USDCoin_MC <- X30_USDCoin$MarketCap[1:286]
X31_XRP_MC <- X31_XRP$MarketCap[1:286]
X32_Zcash_MC <- X32_Zcash$MarketCap[1:286]




#Joining into a data.frame (Market Cap binding of first 286)

data <- cbind(Date_Range, X1_BasicAttentionCoin_MC, X2_BinanceCoin_MC,
              X3_Bitcoin_MC, X4_BitcoinCash_MC, X5_BitcoinSV_MC,
              X6_Cardano_MC, X7_Chainlink_MC, X8_Cosmos_MC,
              X9_Crypto.comCoin_MC, X10_Dash_MC,
              X11_Dogecoin_MC, X12_EOS_MC, X13_Ethereum_MC,
              X14_EthereumClassic_MC, X15_HedgeTrade_MC,
              X16_HuobiToken_MC, X17_KickToken_MC,
              X18_Litecoin_MC, X19_Maker_MC, X20_Monero_MC,
              X21_NEM_MC, X22_Neo_MC, X23_OKB_MC,
              X24_Ontology_MC, X25_Stellar_MC, X26_Tether_MC,
              X27_Tezos_MC, X28_TRON_MC, X29_UNUSSEDLEO_MC,
              X30_USDCoin_MC, X31_XRP_MC, X32_Zcash_MC)

#SVR (First 286 Observations)
regressor = svm(formula = X26_Tether_MC ~.,
                data = data,
                type = 'eps-regression') #For SVR


#Prediction
MarketCap_pred = predict(regressor)
svr <- cbind(Date_Range, MarketCap_pred)

ggplot()+
  geom_line(aes(x = svr$Date, y = svr$MarketCap_pred),
            colour = 'red')+
  geom_line(aes(x = svr$Date, y = predict(regressor, data = data)),
            colour = 'blue')+
  xlab('Date')+
  ylab('Market Cap')

plot(svr)


#Random stuff
Eos <- X12_EOS[1:286, ,drop = FALSE]