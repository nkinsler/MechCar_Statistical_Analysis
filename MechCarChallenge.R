library(dplyr)

## Linear Regression to Predict MPG

MechCar <- read_csv("MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechCar))

## Create Visualizations for the Trip Analysis

SusCoil <- read_csv("Suspension_Coil.csv")

total_summary <- SusCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary

lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

## T-Tests on Suspension Coils

t.test(SusCoil$PSI, mu=mean(1500))

t.test((SusCoil %>% filter(Manufacturing_Lot == "Lot1"))$PSI, mu=mean(1500))
t.test((SusCoil %>% filter(Manufacturing_Lot == "Lot2"))$PSI, mu=mean(1500))
t.test((SusCoil %>% filter(Manufacturing_Lot == "Lot3"))$PSI, mu=mean(1500))
