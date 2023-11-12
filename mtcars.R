library(datasets)

head(mtcars)
cylinders <- table(mtcars$cyl)
barplot(cylinders)
plot(cylinders)
##-------------------------------------------
hist(mtcars$wt)
hist(mtcars$mpg)
plot(mtcars$wt, mtcars$mpg)
##-------------------------------------------
## add some options
plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     cex = 1.5,
     col = "#dd0000",
     main = "MPG as a function of weight of cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG"
     )
