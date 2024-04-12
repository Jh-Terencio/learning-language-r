u <- "https://github.com/eogasawara/R/raw/main/baralho.rda"
load(url(u))
head(baralho)

baralho$idx <- 1:nrow(baralho)
head(baralho, n = 52L)

# Alterando valores vetores ou colunas
baralho$idx[c(1,3,5)] <- 1
head(baralho)

baralho$idx[4:6] <- baralho$idx[4:6] + 1
head(baralho)

# Filtrando dados
  # Filtrando as cartas com index impar
baralho$idx <- 1:nrow(baralho)
vec <- (baralho$idx %% 2 == 1)
vec

idx <- baralho$idx[vec]
idx

cartas <- baralho[vec, ]
cartas

# Operações de comparação
1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)
1 %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)

# Operações de comparação no baralho
x <- baralho$face == "dama" & baralho$naipe == "espadas"
head(baralho[x, ])

x <- baralho$face == "dama" | baralho$naipe == "espadas"
head(baralho[x, ], n = nrow(baralho[x, ]))


# Ausencia de dados (NA)

c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)