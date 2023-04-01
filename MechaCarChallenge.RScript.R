library(dplyr)
library(tidyverse)
mecha_df <- read.csv(file='MechaCar_mpg.csv', header=TRUE)
show(mecha_df)
# generate multiple linear regression to Predict MPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df)
# Summarize the linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df))
