weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

df <- data.frame(weight=weight, height=height, subject=subject)
head(df)

# Adicionando uma coluna nova
df$bmi <- df$weight/df$height^2
df

# Filtrando DF
i <- df$height > 1.7
i

df[i, ]

# Carregando dados a partir de um CSV
vinhos = read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", 
                    header = TRUE, sep = ",")
head(vinhos)

save(vinhos, file = "wine.RData", compress = TRUE)

rm(vinhos)

load("wine.RData")
head(vinhos, 3)

# Salvando no formato CSV
write.table(vinhos, file = "wine.csv", row.names = FALSE, quote = FALSE, sep = ",")
