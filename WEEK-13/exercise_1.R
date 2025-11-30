
library(readr)
library(ggplot2)

# Load the dataset
data <- read_csv("C:/Users/kdivy/OneDrive/Desktop/APPLIED STATS/Week-13/simulated_healthcare_dataset.csv")
head(data)

# Fit the logistic regression model
model <- glm(
  heart_disease ~ age + systolic_bp + cholesterol,
  data = data,
  family = binomial(link = "logit")
)

summary(model)

# Compute predicted probabilities
data$predicted_prob <- predict(model, type = "response")

# Histogram of age by heart disease status (Base R)
par(mfrow = c(1, 2))

hist(data$age[data$heart_disease == 0],
     main = "Age Distribution (No Heart Disease)",
     xlab = "Age", col = "lightblue")

hist(data$age[data$heart_disease == 1],
     main = "Age Distribution (Heart Disease)",
     xlab = "Age", col = "red")

par(mfrow = c(1, 1))

# Scatterplot: age vs predicted probability
ggplot(data, aes(x = age, y = predicted_prob)) +
  geom_point(alpha = 0.6) +
  geom_smooth(color = "blue") +
  labs(title = "Predicted Probability of Heart Disease vs Age",
       x = "Age", y = "Predicted Probability") +
  theme_minimal()

# Interpretation:

# The logistic regression results show that age is the only statistically significant predictor of heart disease. Its coefficient is positive and highly significant (p < 0.001), indicating that the probability of heart disease increases as individuals get older. In contrast, systolic blood pressure and cholesterol do not have significant effects in the model, meaning they do not reliably predict heart disease after accounting for age.

# The coefficient for age (0.1054) translates to an odds ratio of about 1.11, meaning that for every additional year of age, the odds of having heart disease increase by approximately 11%. This is a substantial increase and highlights age as the dominant risk factor in this dataset.

# The histograms visually support this finding: most individuals without heart disease are younger, while those with heart disease tend to be much older. This age separation is clearly visible in the side-by-side plots.

# The scatter plot of predicted probability versus age also shows a strong upward trend. The smooth curve rises sharply between ages 40 and 70, indicating that the model predicts rapidly increasing risk during mid-to-late adulthood. By around age 75, the predicted probability is close to 1.0 for many individuals. This visualization further reinforces the conclusion that age strongly influences heart disease risk in this dataset.
