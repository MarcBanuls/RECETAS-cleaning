#read dropout csvs from the dropout folder
#G:\.shortcut-targets-by-id\1szraWTvZPawHDlS7GFlpY9uZZFKyUKI-\RECETAS\Data Management\Dropouts
cuenca_dropouts <- read.csv('G:/.shortcut-targets-by-id/1szraWTvZPawHDlS7GFlpY9uZZFKyUKI-/RECETAS/Data Management/Dropouts/Cuenca_dropouts.csv',
                            sep = ";")
table(cuenca_dropouts$do_reason)
# 1  4  5  7  8 11 15 18 26 28 35 
# 4  1  3  1  1  1  3  1  8  4  1
barna_dropouts <- read.csv('G:/.shortcut-targets-by-id/1szraWTvZPawHDlS7GFlpY9uZZFKyUKI-/RECETAS/Data Management/Dropouts/Barna_dropouts.csv',
                           sep = ";")
table(barna_dropouts$do_reason_factor)
# 1   2  3  5   6  7  8  9 11 12 15 16 18 20 21 23 26 28 32 35 
# 11  4  2 33  1  3  8  3  3  1  2  1  1  5  12  4 12  2  1  3 

#then, commonly used:
#1,2,3,4,5,6,7,8,9,11,12,15,16,18,20,21,23,26,28,32,35


#Prague:
praga_dropouts <- read.csv('G:/.shortcut-targets-by-id/1szraWTvZPawHDlS7GFlpY9uZZFKyUKI-/RECETAS/Data Management/Dropouts/Praga_dropouts.csv')
table(praga_dropouts$drop_reason)
                           


#categories

# 1	Problemas de salud: Empeoramiento de alguna enfermedad o condición física existente al empezar
# 2	Problemas de salud: Problemas de salud mental
# 3	Problemas de salud: Nueva enfermedad
# 4	Problemas de salud: Nuevo tratamiento para enfermedad
# 6	Problemas de salud: Hospitalización
# 7	Problemas de salud: Otras cuestiones de salud
# 8	Cuidado familiar (cuidado de cónyuges, hijos/as, nietos/as, etc...)
# 9	Motivos relacionados con el trabajo: Encontrar un nuevo trabajo
# 10	Motivos relacionados con el trabajo: Cambios de horarios
# 11	Motivos relacionados con el trabajo: Otros motivos
# 12	Muerte
# 13	Eventos vitales estresantes: Muerte de una persona próxima
# 14	Eventos vitales estresantes: Jubilación
# 15	Eventos vitales estresantes: Traslado
# 16	Eventos vitales estresantes: Problemas de vivienda
# 17	Evaluaciones demasiado largas/difíciles
# 18	No encajar en el grupo
# 19	Conflictos en el grupo
# 20	No es lo que pensé/entendí
# 21	No acuerdo con la asignación al grupo intervención o control
# 22	Pudor - timidez sobre mi apariencia al hacer las actividades y estar en el grupo
# 23	Falta de interés en el estudio
# 24	Falta de interés en las actividades
# 25	Falta de autodisciplina
# 26	Falta de tiempo
# 27	Falta de energía
# 28	Desánimo
# 29	Falta de disfrute de la actividad
# 30	Falta de equipo/material
# 31	Falta de buen tiempo
# 32	Falta de competencias para realizar la actividad
# 33	Miedo a las lesiones
# 34	Miedo a la seguridad
# 35	Problemas de movilidad que me impiden realizar las actividades
# 5	Other