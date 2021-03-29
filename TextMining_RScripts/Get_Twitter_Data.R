#This Script extracts twitter data with hashtag #uk_biobank
library(rtweet)
library(tidyverse)
library(data.table)
library(here)

## To get started you’ll need to do the following things:
##1.  Set up a twitter account if you don’t have one already.
##2. Using your account, setup an application that you will use to access twitter from R
   #Follow these directions
   #https://cran.r-project.org/web/packages/rtweet/vignettes/auth.html

#Then -->:

# whatever name you assigned to your created app
appname <- rstudioapi::showPrompt("Please enter your api app name")

## api key 
api_key<-rstudioapi::askForPassword("Please enter your api key")

## api secret
secret_key<-rstudioapi::askForPassword("Please enter your api secret key")

## access token
access_token<-rstudioapi::askForPassword("Please enter your access token")

## api access token 
access_secret<-rstudioapi::askForPassword("Please enter your access secret token")

#Create a token that authenticates access to tweets.
#If authentication is successful works, it should render the following message in a browser window:
#Authentication complete. Please close this page and return to R.

twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = access_token,
  access_secret = access_secret)

#search_tweets only gets tweets from past 6-9 days
#Run this daily to build up a database over a week
covid19_tweets_orig <- search_tweets('covid19', n=1000, include_rts=FALSE, lang='en')
(filename<-paste0(here('Original_Data//'), 'covid19_tweets_', Sys.Date(), '.csv'))
write_as_csv(covid19_tweets_orig, filename)

#This section will combine all the tweet data subsets from different days
#Combine all the twitter data from different days
data.files<-list.files(here('Original_Data/'), '.csv', full.names = T)
twitter_data_full<-bind_rows(lapply(data.files, read_csv))

#De-duplicate and prepare twitter data
twitter_data_working<-twitter_data_full %>% as_tibble() %>% 
  distinct() %>% 
  select(screen_name, created_at, text, location, followers_count)

fwrite(twitter_data_working, here('Working_Data/covid19_tweets.tsv'), sep = '\t')

