# data-raw/process.R
# Data import and processing pipeline



clock_prices <- read.csv("data-raw/clock_prices.csv")
auto <- read.table("data-raw/auto.data.txt",header = TRUE)


devtools::use_data(clock_prices,auto,overwrite = T)
