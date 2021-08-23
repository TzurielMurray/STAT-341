# Author: Tzuriel Murray, Date: 08/18/2021, Purpose: Calculate mean, median, mode

# Dummy data

variable1 <- c(6, 7, 8, 9, 10)

# calculate the mean/average of variable1

mean(variable1)
# 8

# calculate median value

median(variable1)
# 8

# calculate mode value
variable2 <- c(6, 7, 8, 9, 10, 7) # unimodal data, just one mode which is "7"

# Install the external packages in R
install.packages("modeest")
library("modeest")
mlv(variable2, method = "mfv")
# 7