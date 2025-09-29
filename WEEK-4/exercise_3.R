## Part-1
# Total cards in a standard deck
total_cards <- 52
# Event C: red cards
C <- 26
# Event D: kings 
D <- 4
overlap <- 2
P_C_or_D <- (C / total_cards) + (D / total_cards) - (overlap / total_cards)
P_C_or_D


## Part-2
# Event E: flipping heads
P_E <- 1/2
# Event F: rolling a number greater than 4 
P_F <- 2/6
P_E_and_F <- P_E * P_F
P_E_and_F


## Dependent events
total_balls <- 10
# Event G: drawing a green ball first
P_G <- 6 / total_balls
# Event H: drawing a green ball second
P_H_given_G <- 5 / (total_balls - 1)
P_G_and_H <- P_G * P_H_given_G
P_G_and_H


## Part-3
# Total cards in a standard deck
total_cards <- 52
# Event Q1: drawing a Queen on the first draw
P_Q1 <- 4 / total_cards
# Event Q2: drawing a Queen on the second draw 
P_Q2_given_Q1 <- 3 / (total_cards - 1)   # 3 Queens left out of 51
P_two_queens <- P_Q1 * P_Q2_given_Q1
P_two_queens


## Part-4
# Event A: drawing a Queen
P_A <- 4 / 52   # 4 Queens out of 52 cards
# Event B: getting two Heads in a row 
P_B <- 1 / 4    # HH out of {HH, HT, TH, TT}
P_A_and_B <- P_A * P_B
P_A_and_B
