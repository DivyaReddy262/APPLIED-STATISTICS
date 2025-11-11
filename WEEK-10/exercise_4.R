observed <- c(Medication = 52, Therapy = 33, Combined = 15)

expected_proportions <- c(Medication = 0.50, Therapy = 0.30, Combined = 0.20)

expected_freq <- sum(observed) * expected_proportions

cat("Observed frequencies:\n"); print(observed)
cat("\nExpected frequencies (under H0):\n"); print(expected_freq)

chisq_result <- chisq.test(x = observed, p = expected_proportions)

chi_sq_stat <- as.numeric(chisq_result$statistic)
df <- as.integer(chisq_result$parameter)
p_value <- chisq_result$p.value

cat("\nChi-square Goodness-of-Fit Test (Unequal Proportions)\n")
print(chisq_result)

cat("\nSummary:\n")
cat("Chi-square Statistic:", round(chi_sq_stat, 3), "\n")
cat("Degrees of Freedom:", df, "\n")
cat("P-value:", signif(p_value, 4), "\n")

alpha <- 0.05
cat("\nDecision @ alpha =", alpha, ":\n")
if (p_value < alpha) {
  cat("Reject H0\n")
  cat("Interpretation: Observed preferences differ significantly from the historical proportions.\n")
} else {
  cat("Fail to reject H0\n")
  cat("Interpretation: No significant difference from the historical proportions.\n")
}