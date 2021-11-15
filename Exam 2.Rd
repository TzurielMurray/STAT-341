# Author: Tzuriel Murray, Date: Oct 29, 2021, Purpose: Calculate ANOVA on sample data

# Loading the library

library(dplyr)

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

glimpse(df)

# levels/ranks of variable/column poison

levels(df$poison)

# Summary of data

df %>% group_by(poison) %>% summarise(count_poison = n(), mean_time = mean(time, na.rm = TRUE), sd_time = sd(time, na.rm = TRUE))

# install library ggplot

library(ggplot2)

ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 30, color = "steelblue", position = position_jitter(0.42)) + theme_classic() + labs(title = "Exam 2")

# Perform the one-way ANOVA Test

anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)

# Perform a pairwise comparison

TukeyHSD(anova_one_way)