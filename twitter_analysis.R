# Auth: Swathi Pattapurathi
# Date: March 13, 2017
# Prog: twitter_analysis.R
# Desc: R script to use twitter search API to fetch top 200 tweets from Amazon's Twitter feed

install.packages("rtweet")
library(rtweet)
install.packages("devtools")
devtools::install_github("mkearney/rtweet")
install.packages("devtools")

# Installing packages to resolve 401 error
install.packages("openssl")
install.packages("httpuv")


# Credentials
#----------------------------------

# name assigned to created app
appname <- "RTwitterSearchAPI"

# Consumer Key (API Key)
key <- "z6XzTLltkw47LPGPCLyTjXojB"

# Consumer Secret (API Secret)
secret <- "TifLhwfUmu4QSsTQRGnTyg9FSzZKg7pt3PGnW21kf18UZQ4CIB"

library(rtweet)

# NOTE: A browser page will open requesting your permission to grand auth access
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret)


# Querrying for data
#----------------------------------

dt <- get_timeline("amazon", n = 200)

save_as_csv(dt, "data")
