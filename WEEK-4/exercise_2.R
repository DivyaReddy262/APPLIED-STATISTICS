S <- 1:6

# Rolling an odd number
D <- c(1, 3, 5)
# Probability of event D
P_D <- length(D) / length(S)
P_D


# Rolling a number less than 3
E <- c(1, 2)
# Probability of event E
P_E <- length(E) / length(S)
P_E


# Rolling a prime number
F <- c(2, 3, 5)
# Probability of event F
P_F <- length(F) / length(S)
P_F


# Rolling a multiple of 3
H <- c(3, 6)
# Probability of event H
P_H <- length(H) / length(S)
P_H

# Rolling a number not equal to 6
I <- S[S != 6]  
# Probability of event I
P_I <- length(I) / length(S)
P_I