library(redcapAPI)
library(stringr)
library(dplyr)
library(tidyr)
source("tokens.R")

api.url <- redcap.url
#togo_bl_token
api.token <- melbourne
rcon <- redcapConnection(api.url, api.token)

#my.fields <- c('record_id', 'id_cap')

data <- data.frame()

data <- exportRecords(
  rcon,
  factors = F,
  form_complete_auto = F
  
)