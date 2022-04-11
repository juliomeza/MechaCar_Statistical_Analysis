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

# Group By Lot Summarize
lot <- group_by(suspension_table, Manufacturing_Lot)
lot_summary <- summarize(lot, mean(PSI), median(PSI), var(PSI), sd(PSI))
lot_summary




# Population Table
population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
plt <- ggplot(population_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot
# Sample Data
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt <- ggplot(sample_table,aes(x=log10(PSI))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot
# Test
t.test(log10(sample_table$PSI),mu=mean(log10(population_table$PSI))) #compare sample versus population means
# p-value is greater than 0.05. It is above the significant level.


# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500



population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
lot1 <- population_table %>% filter(Manufacturing_Lot=='Lot1') #select only data points where the lot is Lot1
lot2 <- population_table %>% filter(Manufacturing_Lot=='Lot2') #select only data points where the lot is Lot2
lot3 <- population_table %>% filter(Manufacturing_Lot=='Lot3') #select only data points where the lot is Lot3
# Compare the mean difference between samples
t.test(log10(lot1$PSI),mu=mean(log10(population_table$PSI)))
t.test(log10(lot2$PSI),mu=mean(log10(population_table$PSI)))
t.test(log10(lot3$PSI),mu=mean(log10(population_table$PSI)))

t.test(lot1$PSI,mu=mean(population_table$PSI))
t.test(lot2$PSI,mu=mean(population_table$PSI))
t.test(lot3$PSI,mu=mean(population_table$PSI))







