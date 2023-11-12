library(datasets)

head(lynx)
hist(lynx,
     breaks = 14,
     freq = FALSE,
     col = "thistle1",
     name = paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821 - 1934"),
     xlab = "Number of lynx trapped"
     )

# Add a normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",
      lwd = 2,
      add = TRUE
      )
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

# Add a rug plot
rug(lynx, lwd = 2, col = "gray")

# clean up
detach("package: datasets", unload = TRUE)