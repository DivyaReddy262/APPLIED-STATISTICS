observed <- c(Apple = 40, Banana = 25, Orange = 20, Grapes = 15)

expected_proportions <- rep(1/4, 4)

expected_freq <- sum(observed) * expected_proportions
names(expected_freq) <- names(observed)

cat("Observed frequencies:\n"); print(observed)
cat("\nExpected frequencies (under H0):\n"); print(expected_freq)

chisq_result <- chisq.test(x = observed, p = expected_proportions)

chi_sq_stat <- as.numeric(chisq_result$statistic)
df <- as.integer(chisq_result$parameter)
p_value <- chisq_result$p.value

cat("\nChi-square Goodness-of-Fit Test\n")
print(chisq_result)

cat("\nSummary:\n")
cat("Chi-square Statistic:", round(chi_sq_stat, 3), "\n")
cat("Degrees of Freedom:", df, "\n")
cat("P-value:", signif(p_value, 4), "\n\n")

alpha <- 0.05
if (p_value < alpha) {
  cat("Decision: Reject H0\n")
  cat("Interpretation: The favorite-fruit distribution differs significantly from equal 25% each.\n")
} else {
  cat("Decision: Fail to reject H0\n")
  cat("Interpretation: No evidence that the distribution differs from equal 25% each.\n")
}