
# Task 2: Kaplan–Meier Curves by Treatment Group

library(survival)

veteran$trt <- factor(veteran$trt,
                      levels = c(1, 2),
                      labels = c("Standard", "Test"))

surv_obj <- Surv(time = veteran$time, event = veteran$status)
km_trt <- survfit(surv_obj ~ trt, data = veteran)

plot(km_trt,
     col = c("lightblue", "red"),
     lwd = 2,
     xlab = "Time (days)",
     ylab = "Survival Probability",
     main = "Kaplan–Meier Survival Curves by Treatment")

legend("topright",
       legend = levels(veteran$trt),
       col = c("", "red"),
       lwd = 2)

summary(km_trt)$table[, "median"]

surv_100 <- summary(km_trt, times = 100)$surv
surv_200 <- summary(km_trt, times = 200)$surv

surv_100
surv_200

# INTERPRETATION:The Standard group has a longer median survival (103 days) than the Test group (52.5 days). Survival at 100 days is higher for Standard (0.50 vs 0.33), while by 200 days both groups are similar. Overall, the Standard treatment shows better early survival, but differences will be formally tested in Task 3.


# Task 3: Log-Rank Test Comparing Treatment Groups

# log-rank test
logrank <- survdiff(Surv(time, status) ~ trt, data = veteran)
logrank

chisq <- logrank$chisq
df <- length(logrank$n) - 1
p_value <- 1 - pchisq(chisq, df)

chisq
df
p_value


# Interpretation: 

# The log-rank test shows no significant difference in survival between the Standard and Test treatments (χ² ≈ 0.008, df = 1, p ≈ 0.93).
# Because the p-value is very large, we conclude that the two treatment groups have statistically similar survival distributions.



