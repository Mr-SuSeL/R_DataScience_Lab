library(datasets)

head(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Sepal.Width)
## Wykres w 3 wierszach
par(mfrow = c(3,1))

hist(iris$Petal.Width[iris$Species == "setosa"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width[iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width[iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")
# Summary
summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

# Describe
install.packages('psych')
library(psych)

describe(iris$Sepal.Length)
describe((iris))
