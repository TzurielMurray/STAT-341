# Author: Tzuriel Murray, Date: Nov 10, 2021, Purpose: Calculate chi-square value

# Read the sample data
data_frame <- read.csv("https://goo.gl/j6lRXD")

# Check the data
table(data_frame$treatment, data_frame$improvement)

# Calculate the chi-square value
chisq.test(data_frame$treatment, data_frame$improvement, correct = FALSE)
# X-squared = 5.5569, df = 1, p-value = 0.01841

# Formulate (O-E)^2/E