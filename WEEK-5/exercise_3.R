# Exercise- 3A
n <- 12      
p <- 0.25    
k <- 3       

prob <- pbinom(k, size = n, prob = p, lower.tail = TRUE)

print(paste("The probability that at most 3 out of 12 children are vitamin D deficient is:", round(prob, 4)))
print(paste("Interpretation: This means there is about a", round(prob*100, 2),
            "% chance that 3 or fewer children in the sample will be vitamin D deficient."))

# Exercise- 3B
n <- 20
p <- 0.7
k <- 14

prob <- pbinom(k - 1, size = n, prob = p, lower.tail = FALSE)

print(paste("The probability that at least 14 out of 20 participants develop immunity is:", round(prob, 4)))
print(paste("Interpretation: This means there is about a", round(prob*100, 2),
            "% chance that 14 or more participants will develop immunity when given the vaccine."))

# Exercise- 3C
n <- 15       
p <- 0.4      
a <- 5        
b <- 9        

prob <- pbinom(b, size = n, prob = p) - pbinom(a - 1, size = n, prob = p)

print(paste("The probability that between 5 and 9 adults (inclusive) report regular exercise is:", round(prob, 4)))
print(paste("Interpretation: This means there is about a", round(prob*100, 2),
            "% chance that in a survey of 15 adults, between 5 and 9 will report exercising at least 3 times per week."))
