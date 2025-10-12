install.packages("devtools")
library(devtools)
devtools::install_github("OI-Biostat/oi_biostat_data")
install.packages("tinytex")
tinytex::install_tinytex()

# All possible outcomes (36 total)
dice <- expand.grid(die1 = 1:6, die2 = 1:6)

# Sum of dice
dice$sum <- dice$die1 + dice$die2

# Probability distribution table
prob_table <- as.data.frame(table(dice$sum))
colnames(prob_table) <- c("Sum", "Ways")

# Add probability column
prob_table$Probability <- prob_table$Ways / 36

# Display probability table
print(prob_table)
prob_table$Sum <- as.numeric(as.character(prob_table$Sum))

most_likely <- prob_table[which.max(prob_table$Probability), ]
cat("Most likely sum is", most_likely$Sum, "with probability", most_likely$Probability, "\n")

p_ge_9 <- sum(prob_table$Probability[prob_table$Sum >= 9])
cat("P(sum >= 9) =", p_ge_9, "\n")

expected_value <- sum(prob_table$Sum * prob_table$Probability)
cat("Expected value =", expected_value, "\n")

