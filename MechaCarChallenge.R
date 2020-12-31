library(dplyr)
mpg_table<-read.csv(file='MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_table) #generate linear regression model
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_table)) # generate summary statistics

# Deliverable 2

suspension<-read.csv(file='Suspension_Coil.csv',check.names=F, stringsAsFactors = F)
coil_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

view(lot_summary)

# Deliverable 3

t.test(suspension$PSI, mu=1500) #t-test  t-tests to determine if ALL manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch

suspensionLot1 <-subset(suspension, Manufacturing_Lot == "Lot1") # Lot1 Subset
t.test(suspensionLot1$PSI, mu=1500 )

suspensionLot2 <-subset(suspension, Manufacturing_Lot == "Lot2") # Lot2 subset
t.test(suspensionLot2$PSI, mu=1500 )

suspensionLot3 <-subset(suspension, Manufacturing_Lot == "Lot3") # Lot3 subset
t.test(suspensionLot3$PSI, mu=1500 )
