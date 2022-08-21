# Deliverable 1
library(tidyverse) #import tidyverse package

mecha_mpg <- read_csv("MechaCar_mpg.csv") #import MechaCar data

head(mecha_mpg) #display first rows of imported data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

# Deliverable 2
mecha_coil <- read.csv("Suspension_Coil.csv", check.names=F,stringsAsFactors = F) #import and read csv file as a table

total_summary <- mecha_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table

lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table

# Deliverable 3
t.test(mecha_coil$PSI,mu=1500) #Use t.test() across all lots

lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1") #Use t.test() for each individual lot
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
