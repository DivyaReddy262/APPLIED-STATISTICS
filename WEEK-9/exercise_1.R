# Data for One-Way ANOVA
low_dose = c(120, 115, 123, 117, 121)
medium_dose = c(130, 127, 135, 128, 133)
high_dose = c(140, 138, 142, 137, 145)

# Combine the data into a single data frame
blood_pressure_data = data.frame(
  group = factor(rep(c("Low", "Medium", "High"), each = 5)),
  bp = c(low_dose, medium_dose, high_dose)
)

# Perform One-Way ANOVA and store the result
anova_result = aov(bp ~ group, data = blood_pressure_data)

# Summarize the ANOVA results and store in variable
summary_anova_result = summary(anova_result)

# Display the summary of ANOVA
print(summary_anova_result)

# Interpretation
p_value <- summary_anova_result[[1]]["group", "Pr(>F)"]

if (p_value < 0.05) {
  print(paste("The p-value is", round(p_value, 4), 
              "which is less than 0.05. Therefore, we reject the null hypothesis.",
              "There is a significant difference in blood pressure reduction between dosage levels."))
} else {
  print(paste("The p-value is", round(p_value, 4),
              "which is greater than 0.05. We fail to reject the null hypothesis.",
              "There is no significant difference between dosage levels."))
}
