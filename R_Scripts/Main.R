library(prophet) ##For forcasting
library(ggplot2)
library(lubridate)
library(readr)
library(quantmod)

X1_Bitcoin <- read_csv("10 first/1_Bitcoin.csv")
X2_Ethereum <- read_csv("10 first/2_Ethereum.csv")
X3_XRP <- read_csv("10 first/3_XRP.csv")
X4_Bitcoin_Cash <- read_csv("Data/4_Bitcoin_Cash.csv")
X5_Tether <- read_csv("10 first/5_Tether.csv")
X6_BitcoinSV <- read_csv("10 first/6_Bitcoin SV.csv")
X7_Litecoin <- read_csv("10 first/7_Litecoin.csv")
X8_EOS <- read_csv("10 first/8_EOS.csv")
X9_BinanceCoin <- read_csv("10 first/9_Binance Coin.csv")
X10_Tezos <- read_csv("10 first/10_Tezos.csv")
X11_Chainlink <- read_csv("10 first/11_Chainlink.csv")
X12_Cardano <- read_csv("Data/12_Cardano.csv")
X13_Monero <- read_csv("Data/13_Monero.csv")
X14_Stellar <- read_csv("Data/14_Stellar.csv")
X15_TRON <- read_csv("Data/15_TRON.csv")
X19_Neo <- read_csv("Data/19_Neo.csv")
X20_Dash <- read_csv("Data/20_Dash.csv")

btc_mc <- X1_Bitcoin$MarketCap[1:454]
eth_mc <- X2_Ethereum$MarketCap[1:454]
xrp_mc <- X3_XRP$MarketCap[1:454]
bcc_mc <- X4_Bitcoin_Cash$MarketCap[1:454]
usdt_mc <- X5_Tether$MarketCap[1:454]
bsv_mc <- X6_BitcoinSV$MarketCap[1:454]
ltc_mc <- X7_Litecoin$MarketCap[1:454]
eos_mc <- X8_EOS$MarketCap[1:454]
bcb_mc <- X9_BinanceCoin$MarketCap[1:454]
xtz_mc <- X10_Tezos$MarketCap[1:454]
xlm_mc <- X14_Stellar$MarketCap[1:454]
trx_mc <- X15_TRON$MarketCap[1:454]
neo_mc <- X19_Neo$MarketCap[1:454]
dash_mc <- X20_Dash$MarketCap[1:454]

stacc <- data.frame(btc_mc, eth_mc, xrp_mc, bcc_mc, usdt_mc, bsv_mc, ltc_mc, eos_mc, bcb_mc, xtz_mc, xlm_mc, trx_mc, neo_mc, dash_mc)
View(stacc)
covmatrix = matrix(c(cov(stacc)), nrow=14, ncol=14)
covmatrix

