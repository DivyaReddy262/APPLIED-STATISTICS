n <- 20   
k <- 12   
p <- 0.7  

binom_coeff <- factorial(n) / (factorial(k) * factorial(n - k))
manual_prob <- binom_coeff * (p^k) * ((1 - p)^(n - k))
manual_prob
builtin_prob <- dbinom(k, n, p)
builtin_prob

cat("Manual probability:", manual_prob, "\n")
cat("Built-in probability:", builtin_prob, "\n")
