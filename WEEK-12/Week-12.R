data <- read.csv("C:\\Users\\kdivy\\OneDrive\\Desktop\\APPLIED STATS\\Week-12\\healthcare_costs_rounded-1.csv")

head(data)

str(data)
summary(data)

sum(is.na(data))        # total missing values
colSums(is.na(data))    # missing values per column

library(ggplot2)
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black") +
  theme_minimal() +
  ggtitle("Histogram of Age")

ggplot(data, aes(x = BMI)) +
  geom_histogram(binwidth = 1, fill = "darkgreen", color = "black") +
  theme_minimal() +
  ggtitle("Histogram of BMI")

ggplot(data, aes(x = Number_of_Visits)) +
  geom_histogram(binwidth = 1, fill = "orange", color = "black") +
  theme_minimal() +
  ggtitle("Histogram of Number of Visits")

ggplot(data, aes(x = Healthcare_Cost)) +
  geom_histogram(binwidth = 300, fill = "purple", color = "black") +
  theme_minimal() +
  ggtitle("Histogram of Healthcare Cost")

ggplot(data, aes(x = factor(Smoking_Status))) +
  geom_bar(fill = "red", color = "black") +
  theme_minimal() +
  xlab("Smoking Status (0 = Non-Smoker, 1 = Smoker)") +
  ggtitle("Bar Plot of Smoking Status")

ggplot(data, aes(x = factor(Chronic_Conditions))) +
  geom_bar(fill = "darkcyan", color = "black") +
  theme_minimal() +
  xlab("Number of Chronic Conditions") +
  ggtitle("Bar Plot of Chronic Conditions")


# Multiple regression model
model <- lm(Healthcare_Cost ~ Age + BMI + Number_of_Visits + Chronic_Conditions,
            data = data)

summary(model)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(model)

library(car)
vif(model)

# Refining the model
refined_model <- lm(Healthcare_Cost ~ Age + Chronic_Conditions, data = data)
summary(refined_model)



