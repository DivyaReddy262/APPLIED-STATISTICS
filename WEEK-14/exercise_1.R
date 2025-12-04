
# Task 1: Overall Kaplan–Meier Survival Curve


library(survival)
str(veteran)

surv_obj <- Surv(time = veteran$time, event = veteran$status)

km_fit <- survfit(surv_obj ~ 1)

plot(km_fit,
     xlab = "Time (days)",
     ylab = "Survival Probability",
     main = "Overall Kaplan–Meier Survival Curve: Veteran Lung Cancer Study",
     col = "blue",
     lwd = 2)
grid()

median_surv <- summary(km_fit)$table["median"]
median_surv

# Survival probability at 100 days
surv_100 <- summary(km_fit, times = 100)$surv
surv_100

# Interpretation: The overall Kaplan–Meier curve shows a rapid decline in survival, indicating poor prognosis for patients with advanced lung cancer. The median survival time is 80 days, meaning half the patients are expected to die within this period. The survival probability at 100 days is about 0.39, so roughly 39% of patients remain alive at 100 days. These results summarize overall survival without comparing treatment groups.