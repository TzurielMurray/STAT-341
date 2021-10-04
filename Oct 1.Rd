# Author: Tzuriel Murray, Date: Oct 1, 2021, Purpose: Calculate discrete probability for sample data

# Calculate binomial probability
dbinom(4, size = 12, prob = 0.2)
# 0.1328756

# Calculate cumulative probability
pbinom(4, size = 12, prob = 0.2)
# 0.9274445

# Calculate Poisson probability, lower tail
ppois(16, lambda = 12)
# 0.898709

# Calculate Poisson probability, upper tail
ppois(16, lambda = 12, lower = FALSE)
# 0.101291