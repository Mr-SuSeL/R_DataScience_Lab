vNumeric <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical <- c(F, T, T)

dfa <- cbind(vNumeric, vCharacter, vLogical)

df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df

(coerce <- as.integer(5))
typeof(coerce) # and we have int value

str(df) #str - STRUCTURE, description of structure, not string

y <- c(1:9)
x <- c(1:3)
dfx <- cbind.data.frame(x, y)
dfx$x <-  factor(dfx$x,
                 levels = c(1, 2, 3),
                 labels = c("mac", "Windows", "Ubuntu")
                 )
dfx
typeof(dfx$x)
str(dfx)
