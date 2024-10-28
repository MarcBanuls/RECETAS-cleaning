library(dplyr)
library(xlsx)
#read 15D
qol <- read.xlsx("imports_raw/RCT-Prague_15D-data.xlsx", sheetIndex = '15D1A1 data')
#lowercase all columns
colnames(qol) <- tolower(colnames(qol))

#needs a record_id
# qol$record_id <- ''
#we use dplyr to invent the row number at the moment
#added a +1 to have a correct first order..
qol <- qol %>% 
  mutate(record_id = 1 + row_number()) %>% 
  relocate(record_id)

#need to ask a redcap_event_name for the different values
qol$redcap_event_name <- "preintervention_t0_arm_1"
qol <- qol %>% 
  relocate(redcap_event_name, .after = record_id)
#change date format to one that redcap reads, like D-M-Y
qol$date_15d <- as.Date(qol$date_15d, format = "%d.%m.%Y")

#if there is any "empty" written. change it to ''
qol <- qol %>%
  mutate(across(!all_of("date_15d"), ~ ifelse(. == "empty", "", .)))

#add the form_complete as "2" to have it pretty
qol$healthrelated_quality_of_life_15d_scored_complete <- "2"

#test writing a csv and see if the import works..
write.csv(qol, "qol_import.csv",row.names=FALSE)

#i am pretty sure we will have to link the record_id with the "id_respondent_15d" and every name after this to know 
#which data goes where..

#do the same with de-jong
##JONG
jong <- read.xlsx("imports_raw/RCT-Prague_De Jong Loneliness Scale-data.xlsx", sheetIndex = 'LOS1A1 data')
#lowercase all columns
colnames(jong) <- tolower(colnames(jong))

#needs a record_id
# jong$record_id <- ''
#we use dplyr to invent the row number at the moment
#added a +1 to have a correct first order..
jong <- jong %>% 
  mutate(record_id = 1 + row_number()) %>% 
  relocate(record_id)

#need to ask a redcap_event_name for the different values
jong$redcap_event_name <- "preintervention_t0_arm_1"
jong <- jong %>% 
  relocate(redcap_event_name, .after = record_id)

#change date format to one that redcap reads, like D-M-Y
jong$los_date <- as.Date(jong$los_date, format = "%d.%m.%Y")

#if there is any "empty" written. change it to ''
jong <- jong %>%
  mutate(across(!all_of("los_date"), ~ ifelse(. == "empty", "", .)))

#add the form_complete as "2" to have it pretty
jong$de_jong_gierveld_11item_loneliness_scale_5_options_complete <- "2"

#test writing a csv and see if the import works..
write.csv(jong, "jong_import.csv",row.names=FALSE)
