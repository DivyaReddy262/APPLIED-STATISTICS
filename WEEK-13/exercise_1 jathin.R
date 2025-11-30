
library(readr)
library(ggplot2)

# Load the dataset
data <- read_csv("simulated_healthcare_dataset.csv")
head(data)

# Fit the logistic regression model
model <- glm(
  heart_disease ~ age + systolic_bp + cholesterol,
  data = data,
  family = binomial(link = "logit")
)

summary(model)

# Compute probabilities
data$predicted_prob <- predict(model, type = "response")

# Histogram of age by heart disease status 
par(mfrow = c(1, 2))

hist(data$age[data$heart_disease == 0],
     main = "Age Distribution (No Heart Disease)",
     xlab = "Age", col = "lightblue")

hist(data$age[data$heart_disease == 1],
     main = "Age Distribution (Heart Disease)",
     xlab = "Age", col = "orange")

par(mfrow = c(1, 1))

# Scatterplot: age vs predicted probability
ggplot(data, aes(x = age, y = predicted_prob)) +
  geom_point(alpha = 0.6) +
  geom_smooth(color = "pink") +
  labs(title = "Predicted Probability of Heart Disease vs Age",
       x = "Age", y = "Predicted Probability") +
  theme_minimal()

# Interpretation:

# The results of the logistic regression model suggest that age is the primary factor associated with heart disease in this dataset. The strong positive coefficient for age indicates that as individuals grow older, their likelihood of having heart disease rises steadily. This is also supported by the very small p-value, which confirms that the relationship between age and heart disease is not due to random chance.

# In contrast, systolic blood pressure and cholesterol do not appear to meaningfully influence heart disease risk when age is considered at the same time. Their coefficients are small, and their p-values are relatively large, showing that changes in these variables do not significantly alter the predicted probability of heart disease in this model.

# When the age coefficient is converted to an odds ratio, it shows that each additional year of life increases the odds of heart disease by about 11%. This steady increase helps explain the pattern seen in your visualizations: people without heart disease are mostly younger, while those with heart disease are concentrated at older ages.

# The plot of predicted probabilities further illustrates this trend. The curve rises as age increases, indicating that the model consistently assigns higher risk scores to older individuals. By the time individuals reach their 60s and 70s, the predicted probability becomes quite high. Overall, the model and the plots work together to highlight that age is the strongest and clearest predictor of heart disease among the variables included.
