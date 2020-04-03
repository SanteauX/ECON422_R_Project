library(readr)

X1_Bitcoin <- read_csv('Coins/1_Bitcoin.csv')
X2_Ethereum <- read_csv('Coins/2_Ethereum.csv')
X3_XRP <- read_csv('Coins/3_XRP.csv')
X4_Bitcoin_Cash <- read_csv('Coins/4_Bitcoin_Cash.csv')
X5_Tether <- read_csv('Coins/5_Tether.csv')
X6_Bitcoin_SV <- read_csv('Coins/6_Bitcoin_SV.csv')
X7_Litecoin <- read_csv('Coins/7_Litecoin.csv')
X8_EOS <- read_csv('Coins/8_EOS.csv')
X9_Binance_Coin <- read_csv('Coins/9_Binance_Coin.csv')
X10_Tezos <- read_csv('Coins/10_Tezos.csv')
X11_Chainlink <- read_csv('Coins/11_Chainlink.csv')
X12_Cardano <- read_csv('Coins/12_Cardano.csv')
X13_Stellar <- read_csv('Coins/13_Stellar.csv')
X15_TRON <- read_csv('Coins/15_TRON.csv')
X15_UNUS_SED_LEO <- read_csv('Coins/15_UNUS_SED_LEO.csv')
X14_Monero <- read_csv('Coins/14_Monero.csv')
X17_Huobi_Token <- read_csv('Coins/17_Huobi_Token.csv')
X18_Ethereum_Classic <- read_csv('Coins/18_Ethereum_Classic.csv')
X19_Dash <- read_csv('Coins/19_Dash.csv')
X20_Crypto.com_Coin <- read_csv('Coins/20_Crypto.com_Coin.csv')
X21_Neo <- read_csv('Coins/21_Neo.csv')
X22_HedgeTrade <- read_csv('Coins/22_HedgeTrade.csv')
X23_Cosmos <- read_csv('Coins/23_Cosmos.csv')
X24_IOTA <- read_csv('Coins/24_IOTA.csv')
X25_Maker <- read_csv('Coins/25_Maker.csv')
X26_USD_Coin <- read_csv('Coins/26_USD_Coin.csv')
X27_NEM <- read_csv('Coins/27_NEM.csv')
X28_Zcash <- read_csv('Coins/28_Zcash.csv')
X29_Ontology <- read_csv('Coins/29_Ontology.csv')
X30_Basic_Attention_Token <- read_csv('Coins/30_Basic_Attention_Token.csv')
X31_Dogecoin <- read_csv('Coins/31_Dogecoin.csv')
X32_OKB <- read_csv('Coins/32_OKB.csv')
X33_VeChain <- read_csv('Coins/33_VeChain.csv')
X34_FTX_Token <- read_csv('Coins/34_FTX_Token.csv')
X35_Paxos_Standard <- read_csv('Coins/35_Paxos_Standard.csv')
X36_Qtum <- read_csv('Coins/36_Qtum.csv')
X37_Algorand <- read_csv('Coins/37_Algorand.csv')
X38_Decred <- read_csv('Coins/38_Decred.csv')
X39_Bitcoin_Gold <- read_csv('Coins/39_Bitcoin_Gold.csv')
X40_ICON <- read_csv('Coins/40_ICON.csv')
X41_Hedera_Hashgraph <- read_csv('Coins/41_Hedera_Hashgraph.csv')


vol_var <- c(sqrt(var(X1_Bitcoin$VolumeTraded[1:919])), sqrt(var(X2_Ethereum$VolumeTraded[1:919])), sqrt(var(X3_XRP$VolumeTraded[1:919])), sqrt(var(X4_Bitcoin_Cash$VolumeTraded[1:919])), sqrt(var(X7_Litecoin$VolumeTraded[1:919])), sqrt(var(X8_EOS$VolumeTraded[1:919])), sqrt(var(X9_Binance_Coin$VolumeTraded[1:919])), sqrt(var(X15_TRON$VolumeTraded[1:919])))
mc_var <- c(sqrt(var(X1_Bitcoin$MarketCap[1:919])), sqrt(var(X2_Ethereum$MarketCap[1:919])), sqrt(var(X3_XRP$MarketCap[1:919])), sqrt(var(X4_Bitcoin_Cash$MarketCap[1:919])), sqrt(var(X7_Litecoin$MarketCap[1:919])), sqrt(var(X8_EOS$MarketCap[1:919])), sqrt(var(X9_Binance_Coin$MarketCap[1:919])), sqrt(var(X15_TRON$MarketCap[1:919])))

vol_min <- c(min(X1_Bitcoin$VolumeTraded[1:919]), min(X2_Ethereum$VolumeTraded[1:919]), min(X3_XRP$VolumeTraded[1:919]), min(X4_Bitcoin_Cash$VolumeTraded[1:919]), min(X7_Litecoin$VolumeTraded[1:919]), min(X8_EOS$VolumeTraded[1:919]), min(X9_Binance_Coin$VolumeTraded[1:919]), min(X15_TRON$VolumeTraded[1:919]))
mc_min <- c(min(X1_Bitcoin$MarketCap[1:919]), min(X2_Ethereum$MarketCap[1:919]), min(X3_XRP$MarketCap[1:919]), min(X4_Bitcoin_Cash$MarketCap[1:919]), min(X7_Litecoin$MarketCap[1:919]), min(X8_EOS$MarketCap[1:919]), min(X9_Binance_Coin$MarketCap[1:919]), min(X15_TRON$MarketCap[1:919]))

vol_max <- c(max(X1_Bitcoin$VolumeTraded[1:919]), max(X2_Ethereum$VolumeTraded[1:919]), max(X3_XRP$VolumeTraded[1:919]), max(X4_Bitcoin_Cash$VolumeTraded[1:919]), max(X7_Litecoin$VolumeTraded[1:919]), max(X8_EOS$VolumeTraded[1:919]), max(X9_Binance_Coin$VolumeTraded[1:919]), max(X15_TRON$VolumeTraded[1:919]))
mc_max <- c(max(X1_Bitcoin$MarketCap[1:919]), max(X2_Ethereum$MarketCap[1:919]), max(X3_XRP$MarketCap[1:919]), max(X4_Bitcoin_Cash$MarketCap[1:919]), max(X7_Litecoin$MarketCap[1:919]), max(X8_EOS$MarketCap[1:919]), max(X9_Binance_Coin$MarketCap[1:919]), max(X15_TRON$MarketCap[1:919]))

volt <- cbind(X1_Bitcoin$VolumeTraded[1:919], X2_Ethereum$VolumeTraded[1:919], X3_XRP$VolumeTraded[1:919], X4_Bitcoin_Cash$VolumeTraded[1:919], X7_Litecoin$VolumeTraded[1:919], X8_EOS$VolumeTraded[1:919], X9_Binance_Coin$VolumeTraded[1:919], X15_TRON$VolumeTraded[1:919])
marketc <- cbind(X1_Bitcoin$MarketCap[1:919], X2_Ethereum$MarketCap[1:919], X3_XRP$MarketCap[1:919], X4_Bitcoin_Cash$MarketCap[1:919], X7_Litecoin$MarketCap[1:919], X8_EOS$MarketCap[1:919], X9_Binance_Coin$MarketCap[1:919], X15_TRON$MarketCap[1:919])

volt <- cbind(X1_Bitcoin$VolumeTraded[1:919], X2_Ethereum$VolumeTraded[1:919], X3_XRP$VolumeTraded[1:919], X4_Bitcoin_Cash$VolumeTraded[1:919], X7_Litecoin$VolumeTraded[1:919], X8_EOS$VolumeTraded[1:919], X9_Binance_Coin$VolumeTraded[1:919], X15_TRON$VolumeTraded[1:919])
marketc <- cbind(X1_Bitcoin$MarketCap[1:919], X2_Ethereum$MarketCap[1:919], X3_XRP$MarketCap[1:919], X4_Bitcoin_Cash$MarketCap[1:919], X7_Litecoin$MarketCap[1:919], X8_EOS$MarketCap[1:919], X9_Binance_Coin$MarketCap[1:919], X15_TRON$MarketCap[1:919])

predictor_matrix <- cbind(volt, marketc)
colnames(predictor_matrix) <- c("btc_vt", "eth_vt", "xrp_vt", "bcc_vt", "ltc_vt", "eos_vt","bnb_vt", "tron_vt", "btc_mc", "eth_mc", "xrp_mc", "bcc_mc", "ltc_mc", "eos_mc","bnb_mc", "tron_mc")
colnames(volt) <- c("btc_vt", "eth_vt", "xrp_vt", "bcc_vt", "ltc_vt", "eos_vt","bnb_vt", "tron_vt", "tether_mc")
colnames(marketc) <-c("btc_mc", "eth_mc", "xrp_mc", "bcc_mc", "ltc_mc", "eos_mc","bnb_mc", "tron_mc", "tether_mc")

linear_model <- lm(X5_Tether$MarketCap[1:919] ~ predictor_matrix)

#################
#################
#################
#################
linear_modelvolt <- lm(X5_Tether$VolumeTraded[1:919] ~ volt)
linear_modelmarketc <- lm(X5_Tether$MarketCap[1:919] ~ marketc)
summary(linear_modelvolt)
summary(linear_modelmarketc)

pairs(cbind(volt, X5_Tether$MarketCap[1:919]), upper.panel = NULL)
pairs(cbind(marketc, X5_Tether$MarketCap[1:919]), upper.panel = NULL)

head(predictor_matrix)

#VOLT
vol_t <- cbind(X1_Bitcoin$VolumeTraded[1:919], X2_Ethereum$VolumeTraded[1:919], X3_XRP$VolumeTraded[1:919], X4_Bitcoin_Cash$VolumeTraded[1:919], X7_Litecoin$VolumeTraded[1:919], X8_EOS$VolumeTraded[1:919], X9_Binance_Coin$VolumeTraded[1:919])
volt <- (cbind(vol_t, X5_Tether$MarketCap[1:919]))
colnames(volt) <- c("btc_vt", "eth_vt", "xrp_vt", "bcc_vt", "ltc_vt", "eos_vt","bnb_vt", "tether_mc")

# Color
my_cols <- c("#FC4E07", "#DAF7A6", "#FFC300", "#FF5733", "#C70039", "#900C3F", "#581845", "#000000")  
pairs(volt, pch = 1, col = my_cols, upper.panel = NULL)

lowerpannel<-function(x, y){
  points(x,y, pch = 1, col = my_cols)
}
panelcor <- function(x, y){ 
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- round(cor(x, y), digits=2)
  txt <- paste0("R = ", r)
  cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}
pairs(volt,upper.panel = panelcor, lower.panel = lowerpannel)

#MKTC
mkt_t <- cbind(X1_Bitcoin$MarketCap[1:919], X2_Ethereum$MarketCap[1:919], X3_XRP$MarketCap[1:919], X4_Bitcoin_Cash$MarketCap[1:919], X7_Litecoin$MarketCap[1:919], X8_EOS$MarketCap[1:919], X9_Binance_Coin$MarketCap[1:919])
mkt <- (cbind(mkt_t, X5_Tether$MarketCap[1:919]))
colnames(mkt) <- c("btc_mc", "eth_mc", "xrp_mc", "bcc_mc", "ltc_mc", "eos_mc","bnb_mc", "tether_mc")

# PLOT

lowerpannel<-function(x, y){
  points(x,y, pch = 1, col = my_cols)
}
panelcor <- function(x, y){ 
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- round(cor(x, y), digits=2)
  txt <- paste0("R = ", r)
  cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r)
}
pairs(mkt,upper.panel = panelcor, lower.panel = lowerpannel)
















