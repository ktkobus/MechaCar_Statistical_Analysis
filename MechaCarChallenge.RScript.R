library(dplyr)
library(tidyverse)
# Part 1
mecha_df <- read.csv(file='MechaCar_mpg.csv', header=TRUE)
show(mecha_df)
# generate multiple linear regression to Predict MPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df)
# Summarize the linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df))
plot(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df)

# Part 2
# Import and read the supension_coil.csv file as a table
suspension_table <- read.table(file='Suspension_Coil.csv', header= TRUE, sep = ',', check.names = F, stringsAsFactors = F)

# Create a dataframe using the summarize function to get the mean, median, variance & standard deviation of 
# suspension coil's PSI column
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create a dataframe using group_by and the summarize functions to group each manufacturing lot by
# mean, median, variance, and standard deviation of suspension coil's PSI column
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Part 3
# write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is 
# statistically different from the population mean of 1,500 pounds per square inch.

population_mean <- t.test(total_summary[['Mean']], 1500, data= total_summary)











