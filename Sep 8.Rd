# Author: Tzuriel Murray, Date: Sep 8, 2021, Purpose: To perform ANOVA test on sample dataset

library(dplyr)
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))
glimpse(df)
levels(df$poison)
df %>% group_by(poison) %>% summarise(count_poison = n(), mean_time = mean(time, na.rm = TRUE), sd_time = sd(time, na.rm = TRUE))
library(ggplot2)
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 30, color = "steelblue", position = position_jitter(0.42)) + theme_classic()
anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)

# If the F value is more than the critical value, then there is a significant difference between poison and time #

# If you want to perform a pairwise comparison, then you do the following

TukeyHSD(anova_one_way)