
n <- 15      
k <- 10
p <- 0.6

# Exercise- 2A
prob <- dbinom(k, size = n, prob = p)
prob

print(paste("The probability that exactly 10 out of 15 patients will recover is:", round(prob, 4)))
print(paste("Interpretation: This means there is about a", round(prob*100, 2), 
            "% chance that exactly 10 patients will recover with the antibiotic."))

# Exercise- 2B
n <- 50
p <- 0.98
q <- 0.90

cures_90 <- qbinom(q, size = n, prob = p)

print(paste("The number of cures such that 90% of the time the number is at or below this value is:", cures_90))
print(paste("Interpretation: In repeated trials with 50 patients, 90% of the time the treatment is expected to cure at most", 
            cures_90, "patients. This means curing more than", cures_90, "patients would occur only about 10% of the time."))

# Exercise- 2C
n <- 20
p <- 0.25
groups <- 30

set.seed(123)

side_effects <- rbinom(groups, size=n, prob=p)
print(side_effects)

print("Interpretation: Each number shows how many people in that group of 20 experienced side effects.")
print("For example, if one of the numbers is 7, that means in that group, 7 out of 20 people reported side effects.")