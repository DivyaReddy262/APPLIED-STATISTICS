# Step 1: Generate Data 
set.seed(42) 
vo2 <- rnorm(n = 25, mean = 50, sd = 6)

# Step 2: One-sample upper-tailed t-test
tt <- t.test(vo2, mu = 48, alternative = "greater")

# Step 3: Extract Key Statistics
pval <- tt$p.value
ci   <- tt$conf.int
xbar <- mean(vo2)

# Step 4: Print Results
print(tt)

# Step 5: Clean Summary Output
cat("\nSummary:\n")
cat("Sample mean VO2 max:", signif(xbar, 4), "ml/kg/min\n")
cat("p-value:", signif(pval, 4), "\n")
cat("95% lower CI:", round(ci[1], 2), "\n")
cat("Decision at alpha = 0.05:",
    ifelse(pval < 0.05, "Reject H0", "Fail to reject H0"), "\n")

# Interpretation:
# The sample mean was 51.13 ml/kg/min.
# The p-value was 0.0288, which is less than 0.05.
# Therefore, we reject the null hypothesis and conclude that there is evidence the true mean VO₂ max is greater than 48 ml/kg/min.
# The 95% one-sided lower confidence bound is 48.44, meaning we are 95% confident that the true mean is at least 48.44 ml/kg/min.