library(redcapAPI)
library(stringr)
library(dplyr)
library(tidyr)
api.url <- prague.url
#togo_bl_token
api.token <- prague
rcon <- redcapConnection(api.url, api.token)

#my.fields <- c('record_id', 'id_cap')

data <- data.frame()

data <- exportRecords(
  rcon,
  factors = F,
  form_complete_auto = F
  
)

rcon_prague <- redcapConnection(url = "https://datacapture.isglobal.org/api/",
                                   token = prague)
datatest <- exportRecordsTyped(rcon = rcon_prague)