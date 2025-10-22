set.seed(50) 
battery_life <- rnorm(n = 20, mean = 9.5, sd = 1)

tt <- t.test(battery_life, mu = 10, alternative = "less")

xbar <- mean(battery_life)
pval <- tt$p.value
ci_upper <- tt$conf.int[2]
print(tt)

cat("\n--- Summary (Lower-tailed t-test) ---\n")
cat("Sample mean: ", round(xbar, 2), "\n")
cat("p-value: ", signif(pval, 4), "\n")
cat("95% upper bound for mu: ", round(ci_upper, 2), "\n")
cat("Decision at alpha = 0.05: ",
    ifelse(pval < 0.05, "Reject H0", "Fail to reject H0"), "\n")

# Interpretation:
# The sample mean was 9.24 hours.
# The p-value was 0.00007051, which is less than 0.05.
# Therefore, we reject the null hypothesis and conclude that there is evidence the true mean battery life is less than 10 hours.
# The 95% one-sided upper confidence bound is 9.52, meaning we are 95% confident the true mean is no greater than 9.52 hours.