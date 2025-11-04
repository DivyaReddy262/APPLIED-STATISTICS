# Data for Two-Way ANOVA
diet <- factor(c(
  "Low Fat","Low Fat","High Fat","High Fat","Standard",
  "Low Fat","Low Fat","High Fat","High Fat","Standard"
))

exercise <- factor(c(
  "Regular Exercise","No Exercise","Regular Exercise","No Exercise","Regular Exercise",
  "No Exercise","Regular Exercise","No Exercise","Regular Exercise","No Exercise"
))

body_weight <- c(22, 26, 28, 32, 24, 22, 12, 32, 42, 23)

# Combine the data into a data frame
two_way_data <- data.frame(
  diet = diet,
  exercise = exercise,
  body_weight = body_weight
)

# Hypotheses 
# Main effect of Diet:
#   H0_diet: The mean body_weight is the same for all diet levels (Low Fat = High Fat = Standard).
#   H1_diet: At least one diet level has a different mean body_weight.

# Main effect of Exercise:
#   H0_ex: The mean body_weight is the same across exercise conditions (Regular = No).
#   H1_ex: The mean body_weight differs between exercise conditions.

# Diet × Exercise Interaction:
#   H0_int: There is no interaction; the effect of exercise on body_weight does not depend on diet.
#   H1_int: There is an interaction; the effect of exercise on body_weight depends on diet.

two_way_anova <- aov(body_weight ~ diet * exercise, data = two_way_data)
summary_two_way_anova <- summary(two_way_anova)

# Print the summary table
print(summary_two_way_anova)