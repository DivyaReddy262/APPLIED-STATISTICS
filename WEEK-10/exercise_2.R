gender_restaurant <- matrix(
  c(48, 27, 15,   
    32, 41, 22), 
  nrow = 2,
  byrow = TRUE
)

rownames(gender_restaurant) <- c("Male", "Female")
colnames(gender_restaurant) <- c("Fast food", "Casual dining", "Fine dining")

gender_restaurant

chisq_result <- chisq.test(gender_restaurant)
chisq_result

chi_sq_stat <- chisq_result$statistic
df <- chisq_result$parameter
p_value <- chisq_result$p.value

cat("Chi-square Test of Independence\n")
cat("Chi-square Statistic:", round(chi_sq_stat, 3), "\n")
cat("Degrees of Freedom:", df, "\n")
cat("P-value:", round(p_value, 4), "\n\n")

alpha <- 0.05
if (p_value < alpha) {
  cat("Decision: Reject the null hypothesis (H0)\n")
  cat("Interpretation: There is a significant association between gender and restaurant preference.\n")
} else {
  cat("Decision: Fail to reject the null hypothesis (H0)\n")
  cat("Interpretation: There is no significant association between gender and restaurant preference.\n")
}