library(dplyr)
mpg_table<-read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_table) #generate linear regression model
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_table)) # generate summary statistics