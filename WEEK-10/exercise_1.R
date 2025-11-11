age_smoking <- matrix(
  c(85, 25, 15,   
    90, 30, 25,   
    70, 20, 35),  
  nrow = 3,
  byrow = TRUE
)

rownames(age_smoking) <- c("18-29", "30-49", "50+")
colnames(age_smoking) <- c("Non-smoker", "Occasional smoker", "Regular smoker")

age_smoking

chisq_result <- chisq.test(age_smoking)
chisq_result

chi_sq_stat <- chisq_result$statistic
df <- chisq_result$parameter
p_value <- chisq_result$p.value

# Display the results
cat("Chi-square Test for Homogeneity\n")
cat("Chi-square Statistic:", round(chi_sq_stat, 3), "\n")
cat("Degrees of Freedom:", df, "\n")
cat("P-value:", round(p_value, 4), "\n\n")

alpha <- 0.05
if (p_value < alpha) {
  cat("Decision: Reject the null hypothesis (H0)\n")
  cat("Interpretation: The distribution of smoking habits differs across age groups.\n")
} else {
  cat("Decision: Fail to reject the null hypothesis (H0)\n")
  cat("Interpretation: The distribution of smoking habits is similar across age groups.\n")
}

