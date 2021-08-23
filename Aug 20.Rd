# Author: Tzuriel Murray, Date: 08/20/21, Purpose: Calculate mode

# variable 1
variable1 <- c(9, 14, 15, 17, 39, 9, 39, 3, 35, 9)

# calculate mode

library(modeest)

mlv(variable1, method = "mfv")
# 9