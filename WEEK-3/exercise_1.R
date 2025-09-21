# Set a seed for reproducibility
set.seed(123)

# Sample Data
data <- rnorm(500, mean = 60, sd = 10)

# Create the histogram
hist(data,
     probability = TRUE,
     main = "Relative Frequency Histogram",
     xlab = "Data Values",
     ylab = "Relative Frequency",
     col = "skyblue",
     border = "black")


# Create the histogram object
h <- hist(data,
          probability = TRUE,
          main = "Relative Frequency Histogram with Frequency Polygon",
          xlab = "Data Values",
          ylab = "Relative Frequency",
          col = "lightgreen",
          border = "black")

# Add frequency polygon (connects midpoints of histogram bins)
lines(h$mids, h$density, type = "l", col = "purple", lwd = 2)

# Optional: add a smooth density curve for comparison
lines(density(data), col = "red", lwd = 2, lty = 2)

# Add legend
legend("topright",
       legend = c("Frequency Polygon", "Density Curve"),
       col = c("purple", "red"),
       lwd = 2,
       lty = c(1, 2))

##Part-3
data(airquality)
ozone <- na.omit(airquality$Ozone)

# Histogram with density curve
hist(ozone,
     probability = TRUE,   
     col = "lightblue",
     border = "black",
     main = "Histogram of Ozone with Density Curve",
     xlab = "Ozone (ppb)",
     ylab = "Density")

#density curve
lines(density(ozone), col = "red", lwd = 2)

boxplot(ozone,
        main = "Boxplot",
        ylab = "Ozone (ppb)",
        col = "lightgreen",
        border = "black",
        notch = TRUE) 

