library(datasets)
data()
iris
head(iris)
df <- iris
df
tail(df, 5)
View(df)
str(df)
colnames(iris)
colnames(iris)[1]
colnames(iris)[4]
d <- colnames(iris)[4]

df$d # tzreba zrobić jak poniżej
df[colnames(iris)[4]]
df[d]
df$Petal.Width
srednia <- mean(df$Petal.Width)
srednia

# Czym jest data frame?
class(df)
typeof(df)
is.data.frame(df)
is.list(df)

sapply(df[-5], max)
subset(df, subset = Species == 'setosa')
help(subset)
# alternatywnie:
df[df$Species == "setosa",]
df[df$Species == "setosa" | df$Species =="versicolor", c("Species", "Sepal.Length")]

# Tworzymy dataframe
iorok <- c(2000, 20004, 2008, 2012, 2016, 2020)
miejsce <- c("Sydney", "Ateny", "Pekin", "LOndyn", "Rio de Janeiro", "Tokio")
zlote <- c(6, 3, 4, 3, 2, 4)
srebrne <- c(5, 2, 5, 2, 3, 5)
brazowe <- c(3, 5, 2, 6, 6, 5)
ls() # obiekty środowiskowe
df1 <- data.frame(iorok, miejsce, zlote, srebrne, brazowe)
df1
str(df1)
View(df1)
f <- c("zlote", "srebrne", "brazowe")
df1[f]
# Sortowanie
df1[order(df1$zlote),] # asc
df1[order(-df1$zlote),] #desc
df1[order(-df1$zlote, -df1$iorok), ] #tam, gdzie te same zlote tam 
#drugie kryterium rok porządkuje dane
rbind() #dodaje wiersz do df
cbind() # dodaje kolumnę do dataframe










