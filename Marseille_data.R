library(haven)
marseille_data<- read_sav('RECETAS_WP4_Export_Baseline_Marseille_20250207 2.sav')
#save as .csv 
write.csv(marseille_data,'marseille_20250207.csv',row.names = F)
