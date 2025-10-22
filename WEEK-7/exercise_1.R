set.seed(50)
weights <- rnorm(n = 30, mean = 72, sd = 5)
tt <- t.test(weights, mu = 70, conf.level = 0.95)
print(tt)

pval <- tt$p.value
ci   <- tt$conf.int
xbar <- mean(weights)

cat(paste0(
  "\nSummary:\n",
  "Sample mean = ", round(xbar, 2), " kg\n",
  "p-value = ", round(pval, 4), "\n",
  "95% CI = (", round(ci[1], 2), ", ", round(ci[2], 2), ")\n",
  "Decision at alpha = 0.05: ",
  ifelse(pval < 0.05, "Reject H0.", "Fail to reject H0."), "\n"
))

# Interpretation:
# The sample mean weight after the diet was 71.64 kg.
# The t-test produced a p-value of 0.0607, which is greater than 0.05.
# Therefore, we fail to reject the null hypothesis (H₀: μ = 70) at the 5% significance level.
# This means there is not enough statistical evidence to conclude that the average weight after following the diet is significantly different from 70 kg.
# The 95% confidence interval for the true mean weight is (69.92, 73.37).
# Since this interval includes 70, it supports our conclusion that the true mean weight may not differ significantly from 70 kg.