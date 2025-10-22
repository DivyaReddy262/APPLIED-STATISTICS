set.seed(50) 

groupA <- rnorm(n = 30, mean = 12, sd = 4)

groupB <- rnorm(n = 30, mean = 9, sd = 4)

tt <- t.test(groupA, groupB, alternative = "two.sided", var.equal = TRUE)
meanA <- mean(groupA)
meanB <- mean(groupB)
pval  <- tt$p.value
ci    <- tt$conf.int
print(tt)

cat("\n--- Summary (Two-sample t-test) ---\n")
cat("Mean (Drug X): ", round(meanA, 2), "\n")
cat("Mean (Drug Y): ", round(meanB, 2), "\n")
cat("p-value: ", signif(pval, 4), "\n")
cat("95% confidence interval for (mean1 - mean2): ",
    round(ci[1], 2), " to ", round(ci[2], 2), "\n")
cat("Decision at alpha = 0.05: ",
    ifelse(pval < 0.05, "Reject H0", "Fail to reject H0"), "\n")

# Interpretation:
# The mean reduction for Drug X was 11.72 mmHg, and for Drug Y was 7.68 mmHg.
# The p-value was 0.0003089, which is less than 0.05.
# Therefore, we reject the null hypothesis and conclude that there is evidence of a significant difference in mean blood pressure reduction between Drug X and Drug Y.
# The 95% confidence interval (1.93, 6.13) suggests that Drug X lowers blood pressure between 1.93 and 6.13 mmHg more than Drug Y on average.