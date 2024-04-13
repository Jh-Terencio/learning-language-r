weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

df <- data.frame(weight=weight, height=height, subject=subject)

# Bota em ordem o df
sort(df$height)

# Mostra os valores do maior ao menor
order(df$height)

o <- order(df$height)
ds <- df[o, ]
head(ds)