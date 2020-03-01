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

btc_mc <- X1_Bitcoin$MarketCap[1:852]
eth_mc <- X2_Ethereum$MarketCap[1:852]
xrp_mc <- X3_XRP$MarketCap[1:852]
bcc_mc <- X4_Bitcoin_Cash$MarketCap[1:852]
usdt_mc <- X5_Tether$MarketCap[1:852]
#bsv_mc <- X6_BitcoinSV$MarketCap[1:852]
ltc_mc <- X7_Litecoin$MarketCap[1:852]
eos_mc <- X8_EOS$MarketCap[1:852]
bnb_mc <- X9_BinanceCoin$MarketCap[1:852]
xtz_mc <- X10_Tezos$MarketCap[1:852]
xlm_mc <- X14_Stellar$MarketCap[1:852]
trx_mc <- X15_TRON$MarketCap[1:852]
neo_mc <- X19_Neo$MarketCap[1:852]
dash_mc <- X20_Dash$MarketCap[1:852]


btc_vt <- X1_Bitcoin$VolumeTraded[1:852]
eth_vt <- X2_Ethereum$VolumeTraded[1:852]
xrp_vt <- X3_XRP$VolumeTraded[1:852]
bcc_vt <- X4_Bitcoin_Cash$VolumeTraded[1:852]
usdt_vt <- X5_Tether$VolumeTraded[1:852]
ltc_vt <- X7_Litecoin$VolumeTraded[1:852]
eos_vt <- X8_EOS$VolumeTraded[1:852]
bnb_vt <- X9_BinanceCoin$VolumeTraded[1:852]
xtz_vt <- X10_Tezos$VolumeTraded[1:852]
xlm_vt <- X14_Stellar$VolumeTraded[1:852]
trx_vt <- X15_TRON$VolumeTraded[1:852]
neo_vt <- X19_Neo$VolumeTraded[1:852]
dash_vt <- X20_Dash$VolumeTraded[1:852]



stacc <- data.frame(btc_mc, eth_mc, xrp_mc, bcc_mc, usdt_mc, ltc_mc, eos_mc, bcb_mc, xtz_mc, xlm_mc, trx_mc, neo_mc, dash_mc)
View(stacc)
covmatrix = matrix(c(cov(stacc)), nrow=14, ncol=14)
covmatrix

