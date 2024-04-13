weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

df <- data.frame(weight=weight, height=height, subject=subject)

state <- c("RJ", "SP", "MG", "RJ", "SP", "MG")

ds <- data.frame(subject=subject, state = state)
head(ds)

# Integrando os dados por junção
dfm <- merge(df, ds, by.x = "subject", by.y = "subject")
head(dfm)

# Usando a biblioteca dplyr
library(dplyr)

# Pipeline de filtragem, projeção e ordenação
result <- dfm |>
  filter(height>1.7) |>
  select(subject, weight, height) |>
  arrange(height)

head(result)

# Pipeline de agregação de dados
result <- dfm |>
  # Agrupa por estados
  group_by(state) |>
  # Conta por estado, quantas pessoas eu tenho e suas médias de altura
  summarize(count = n(), height = mean(height))

head(result)