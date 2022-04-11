# Import Libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Import MechaCar_mpg.csv
cars_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(cars_table)

# Multiple Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=cars_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=cars_table)) #generate summary statistics



# Import Suspension_Coil.csv
suspension_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# Data Frame
total_summary <- summarize(suspension_table, mean(PSI), median(PSI), var(PSI), sd(PSI))
total_summary

# Group By Lot
lot <- group_by(suspension_table, Manufacturing_Lot)
lot_summary <- summarize(lot, mean(PSI), median(PSI), var(PSI), sd(PSI))
lot_summary



