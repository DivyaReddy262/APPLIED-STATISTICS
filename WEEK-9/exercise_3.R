# Setup and data description
data(InsectSprays)
head(InsectSprays)

# Structure and summary
str(InsectSprays) 
summary(InsectSprays) 

# Data description: The InsectSprays dataset contains 72 observations and 2 variables:The insect counts range from 0 to 26, with a mean of 9.5 and median of 7.Each spray group has 12 samples, and some sprays likely have lower insect counts (e.g., B, C), suggesting higher effectiveness.

# Ensure spray is a factor
InsectSprays$spray <- factor(InsectSprays$spray)

# Hypothesis:
# H0: The mean insect count is the same for all sprays (no effect of spray).
# H1: At least one spray type has a different mean insect count.

# Visualization
boxplot(count ~ spray, data = InsectSprays,
        main = "Insect Count by Spray Type",
        xlab  = "Spray",
        ylab  = "Insect Count")

# The boxplot shows clear differences in insect counts among spray types:
# Sprays C, D, and E have much lower insect counts, indicating higher effectiveness in reducing insect numbers.
# Sprays A, B, and F show higher median counts and greater variability, suggesting they are less effective overall.
# A few outliers are visible in some groups, but the overall pattern strongly supports the idea that some sprays are more effective than others.

# One-way ANOVA
anova_fit <- aov(count ~ spray, data = InsectSprays)
anova_summary <- summary(anova_fit)
print(anova_summary)

# The p-value for the spray factor is < 2e-16, which is far below 0.05, indicating a highly significant effect of spray type on insect count.
# This means we reject the null hypothesis and conclude that at least one spray type has a different mean insect count compared to the others.
