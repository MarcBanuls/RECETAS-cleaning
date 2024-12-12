#el arxiu de susana, volem saber en el que diu Asistancia s1 “No” necessitem un “razones no asistencia s1”
library(dplyr)
library(xlsx)
#read 15D
visits <- read.xlsx("RECETAS Cuenca DataQuality Dic2024.xlsx", sheetIndex = 'Sheet1')
visits_clean <- visits %>% 
  select(Código.encuestado, Lugar.de.la.encuesta,Nombre.del.encuestador,Numero.de.sesiones,Asistencia.s1,Razones.no.asistencia.s1,
         Asistencia.s2,Razones.no.asistencia.s2,Asistencia.s3,Razones.no.asistencia.s3,Asistencia.s4,Razones.no.asistencia.s4,
         Asistencia.s5,Razones.no.asistencia.s5,Asistencia.s6,Razones.no.asistencia.s6,Asistencia.s7,Razones.no.asistencia.s7,
         Asistencia.s8,Razones.no.asistencia.s8,Asistencia.s9,Razones.no.asistencia.s9)
#igual renta més fer un filtre de no asistencia i razones buit per cada num de visita, amb codigo, lugar, i encuestador.
#després ho juntem tot a un excel en indexos.

noassist1<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s1,Razones.no.asistencia.s1) %>% 
  filter(Asistencia.s1 =='No' & is.na(Razones.no.asistencia.s1))
noassist2<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s2,Razones.no.asistencia.s2) %>% 
  filter(Asistencia.s2 =='No' & is.na(Razones.no.asistencia.s2))
noassist3<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s3,Razones.no.asistencia.s3) %>% 
  filter(Asistencia.s3 =='No' & is.na(Razones.no.asistencia.s3))
noassist4<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s4,Razones.no.asistencia.s4) %>% 
  filter(Asistencia.s4 =='No' & is.na(Razones.no.asistencia.s4))
noassist5<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s5,Razones.no.asistencia.s5) %>% 
  filter(Asistencia.s5 =='No' & is.na(Razones.no.asistencia.s5))
noassist6<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s6,Razones.no.asistencia.s6) %>% 
  filter(Asistencia.s6 =='No' & is.na(Razones.no.asistencia.s6))
noassist7<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s7,Razones.no.asistencia.s7) %>% 
  filter(Asistencia.s7 =='No' & is.na(Razones.no.asistencia.s7))
noassist8<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s8,Razones.no.asistencia.s8) %>% 
  filter(Asistencia.s8 =='No' & is.na(Razones.no.asistencia.s8))
noassist9<- visits %>% 
  select(Código.encuestado,Lugar.de.la.encuesta,Nombre.del.encuestador,Asistencia.s9,Razones.no.asistencia.s9) %>% 
  filter(Asistencia.s9 =='No' & is.na(Razones.no.asistencia.s9))

write.xlsx(noassist1, file='No_asiste_razones.xlsx',sheetName = 'Visita1', row.names = FALSE)
write.xlsx(noassist2, file='No_asiste_razones.xlsx',sheetName = 'Visita2', row.names = FALSE,append = TRUE)
write.xlsx(noassist3, file='No_asiste_razones.xlsx',sheetName = 'Visita3', row.names = FALSE,append = TRUE)
write.xlsx(noassist4, file='No_asiste_razones.xlsx',sheetName = 'Visita4', row.names = FALSE,append = TRUE)
write.xlsx(noassist5, file='No_asiste_razones.xlsx',sheetName = 'Visita5', row.names = FALSE,append = TRUE)
write.xlsx(noassist6, file='No_asiste_razones.xlsx',sheetName = 'Visita6', row.names = FALSE,append = TRUE)
write.xlsx(noassist7, file='No_asiste_razones.xlsx',sheetName = 'Visita7', row.names = FALSE,append = TRUE)
write.xlsx(noassist8, file='No_asiste_razones.xlsx',sheetName = 'Visita8', row.names = FALSE,append = TRUE)
write.xlsx(noassist9, file='No_asiste_razones.xlsx',sheetName = 'Visita9', row.names = FALSE,append = TRUE)