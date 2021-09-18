# Author: Tzuriel Murray, Date: Sep 15, 2021, Purpose: Calculate T-Test value on sample datasets

# Generate sample random numbers and store them in variables x and y
x = rnorm(20)
y = rnorm(20)

# Plotting x and y variables

pts = seq(-8.5, 8.5, length = 200)
plot(pts, dt(pts, df = 17), col = "red", type = "l")
lines(density(x), col = "green")
lines(density(y), col = "blue")

# Apply t-test fuction as follows

ttest = t.test(x,y)
