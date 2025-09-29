# Step 1: Define the probabilities
# Probability of having the disease
P_D <- 0.005

# Probability of not having the disease (complement)
P_Dc <- 1 - P_D

# Probability of testing positive given disease (sensitivity)
P_T_given_D <- 0.9

# Probability of testing positive given no disease (false positive rate)
P_T_given_Dc <- 0.05

# Bayes' theorem: P(D | T)
P_D_given_T <- (P_T_given_D * P_D) / 
  ((P_T_given_D * P_D) + (P_T_given_Dc * P_Dc))
P_D_given_T