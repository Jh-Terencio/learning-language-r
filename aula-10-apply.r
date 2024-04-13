weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")


# apply() takes Data frame or matrix as an input and gives output in vector, list or array. Apply function in R is primarily used to avoid explicit uses of loop constructs. It is the most basic of all collections can be used over a matrices.

df <- data.frame(weight=weight, height=height, subject=subject)
head(df)

lapply(df[,1:2], mean, na.rm=TRUE) # Retorna no formato de lista
sapply(df[,1:2], mean, na.rm=TRUE) # Retorna no formato de matriz/vetor

teste <- lapply(df[,1:2], mean, na.rm=TRUE) # Retorna no formato de lista
teste[1]

teste2 <- sapply(df[,1:2], mean, na.rm=TRUE) # Retorna no formato de matriz/vetor
teste2[1]