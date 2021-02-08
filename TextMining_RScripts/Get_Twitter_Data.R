#This Script extracts twitter data with hashtag #uk_biobank
library(rtweet)
library(tidyverse)
library(data.table)
library(here)

# whatever name you assigned to your created app
#appname <- rstudioapi::showPrompt("Please enter your api app name")
appname <- "ndph_textminingtute"

## api key 
#api_key<-rstudioapi::askForPassword("Please enter your api key")
key <- "rcifS2T4qzwPd4vNpqDOVRto6"

## api secret
#secret_key<-rstudioapi::askForPassword("Please enter your api secret key")
secret <- "pAczxrijl26k2RkcYwpHClk8P2O2glkrglsRxffpOIWHX9d5fv"

## access token
#access_token<-rstudioapi::askForPassword("Please enter your access token")
access_token <- "888992125-9nkoDcz6L3FxQChC67CzQyLDpWmTcKef9ideNW1v"

## api access token 
#access_secret<-rstudioapi::askForPassword("Please enter your access secret token")
access_secret <- "R5TJ3ZopqZsxHLHojJw4xEV8uzhYXW02V37LmIqOs8fbC"

#Create a token that authenticates access to tweets.
#If authentication is successful works, it should render the following message in a browser window:
#Authentication complete. Please close this page and return to R.

twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  set_renv = TRUE)

#search_tweets only gets tweets from past 6-9 days
covid19_tweets_orig <- search_tweets2('covid19', n=1000, include_rts=FALSE, lang='en')
write_as_csv(covid19_tweets_orig, here('Original_Data/covid19_tweets_08022021.csv'))

covid19_tweets_basecolumns<-read.table(here('Original_Data/covid19_tweets_08022021.csv'), header = T, sep=',' ) %>% 
  as_tibble() %>% 
  select(screen_name, created_at, text, location, followers_count)

fwrite(covid19_tweets_basecolumns, here('Working_Data/covid19_tweets.tsv'), sep = '\t')



