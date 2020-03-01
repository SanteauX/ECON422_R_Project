#rm(list=ls(all=TRUE))#to remove all the items

colnames(markc) <- c("BinanceCoin MC", "BitcoinCash MC", "Bitcoin MC", "Dash MC", "EOS MC", "ETH MC", "Litecoin MC", "NEO MC",
                     "TRON MC", "Stellar MC", "Ripple MC", "Tezos MC")
colnames(volt) <- c("BinanceCoin VT", "BitcoinCash VT", "Bitcoin VT", "Dash VT", "EOS VT", "ETH VT", "Litecoin VT", "NEO VT",
                    "TRON VT", "Stellar VT", "Ripple VT", "Tezos VT")

volt <- cbind(bnb_vt, bcc_vt,btc_vt, dash_vt, eos_vt, eth_vt, ltc_vt, neo_vt,
              trx_vt, xlm_vt, xrp_vt, xtz_vt)
markc <- cbind(bnb_mc, bcc_mc,btc_mc, dash_mc, eos_mc, eth_mc, ltc_mc, neo_mc,
              trx_mc, xlm_mc, xrp_mc, xtz_mc)

names <- cbind("BinanceCoin", "BitcoinCash", "Bitcoin", "Dash", "EOS", "ETH", "Litecoin", "NEO",
               "TRON", "Stellar", "Ripple", "Tezos")


predictor_data <- cbind(volt, markc)

model1 <- lm(X5_Tether$MarketCap[1:852] ~ bnb_vt+ bcc_vt+btc_vt+ dash_vt+ eos_vt+ eth_vt+ ltc_vt+ neo_vt+
               trx_vt+ xlm_vt+ xrp_vt+ xtz_vt+ bnb_mc+ bcc_mc+btc_mc+ dash_mc+ eos_mc+ eth_mc+ ltc_mc+ neo_mc+
               trx_mc+ xlm_mc+ xrp_mc+ xtz_mc)
summary(model1)
confint(model1, conf.level=0.95)

cor(bnb_mc,bnb_vt, method="pearson" )
cor(bcc_mc,bcc_vt, method="pearson" )
cor(btc_mc,btc_vt, method="pearson" )
cor(dash_mc,dash_vt, method="pearson" )
cor(eos_mc,eos_vt, method="pearson" )
cor(eth_mc,eth_vt, method="pearson" )
cor(ltc_mc,ltc_vt, method="pearson" )
cor(neo_mc,neo_vt, method="pearson" )
cor(trx_mc,trx_vt, method="pearson" )
cor(xrp_mc,xrp_vt, method="pearson" )
cor(xlm_mc,xlm_vt, method="pearson" )
cor(xtz_mc,xtz_vt, method="pearson" )

plot(model1)


 