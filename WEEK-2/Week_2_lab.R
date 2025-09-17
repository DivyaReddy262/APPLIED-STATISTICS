iris_df <- as.data.frame(iris)
str(iris_df)
summary(iris_df)
sapply(iris_df, class)

# Histogram for Sepal.Width
hist(iris_df$Sepal.Width,
     main = "Distribution of Sepal Width",
     xlab = "Sepal Width (cm)",
     ylab = "Frequency",
     col = "violet",
     border = "black")


# Select variable
data <- iris$Sepal.Width
range_val <- max(data) - min(data)
print(paste("Range:", range_val))

q1 <- quantile(data, 0.25)
q3 <- quantile(data, 0.75)
iqr_val <- q3 - q1
print(paste("IQR:", iqr_val))

print(paste("25th percentile (Q1):", q1))
print(paste("75th percentile (Q3):", q3))


# box-and-whisker plot
boxplot(data,
        main = "Boxplot of Sepal Width",
        ylab = "Sepal Width (cm)",
        col = "lightblue",
        border = "darkblue")


var_val <- var(data)
print(paste("Variance:", var_val))

sd_val <- sqrt(var_val)
print(paste("Standard Deviation:", sd_val))

