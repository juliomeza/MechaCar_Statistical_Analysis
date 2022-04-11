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
