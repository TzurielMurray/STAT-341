# Author: Tzuriel Murray, Date: Sep 27, 2021, Purpose: To calculate correlation coefficient value

# Loading the library

library("ggpubr")

# Reading some sample data
my_data <- mtcars

# Get a correlation value between "mpg" and "disp" and plot the distribution

ggscatter(my_data, x = "mpg", y = "disp", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Displacement")

# Use cor.test function to calculate correlation value without plotting

cor.test(my_data$disp, my_data$mpg, method = "pearson")

cor.test(my_data$disp, my_data$mpg, method = "spearman", exact = FALSE)