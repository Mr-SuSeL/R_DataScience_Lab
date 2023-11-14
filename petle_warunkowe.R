library(datasets)

zarobki <- 6001
if (zarobki == 6000) {
  print("zgadza sie kasiora!")
}   else if (zarobki > 6000) {
  print("Więcej kasiory")
} else {
  print("Za mało kasiory")
}

# FOR
dzieci <- c(0, 1, 2, 3)
for (i in dzieci) {
  print(i)
}

for (i in 1:length(dzieci)) {
  print(i)
}


df <- iris
df <- head(df, 10)
df
nrow(df)

for (i in 1:nrow(df)) {
  if (df$Sepal.Length[i] > 4.8) {
    df$Sepal.Length[i] <- "Dużo"
  } else {
    df$Sepal.Length[i] <- "Mało"
  }
}
df
#for (i in 1:nrow(df)) {
  df$Sepal.Length <- ifelse (df$Sepal.Length > 4.8, "B.Dużo", "B.Mało")
#}

# WHILE
p <- 1
while (p <= nrow(df)){
  if (df$Sepal.Length[p] == "B.Dużo"){
    df$Sepal.Length[p] <- T
  } else {
    df$Sepal.Length[p] <- F
  }
  p <- p + 1
}
str(df)
df$Sepal.Length <- as.logical(df$Sepal.Length)

for (i in 1:5){
  if (i == 3) next #pomija dla trójki
  print(i)
}

for (i in 1:5){
  print(i)
  if (i == 3) break #pomija dla wszystko za trójką
}
















  









