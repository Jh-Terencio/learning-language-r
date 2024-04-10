# São variáveis que armazenam objetos: Vetores, Atributos, Matrizes, Classes, etc

# Vetor
dado <- c(1,2,3,4,5,6)
dado
is.vector(dado)

numero <- 5
is.vector(numero)

length(numero)

length(dado)

# Variavel inteira e alfanumerico

inteiro <- 1L
texto <- "ace"

typeof(inteiro)
typeof(texto)

# Funções aplicáveis

cartas <- 1L:13L
faces <- c("ás", "dois", "tres", "quatro", "cinco", "seis",
           "sete", "oito", "nove", "dez", "valete", "dama",
           "rei")

n <- sum(cartas)
is.integer(n)

m <- max(faces)
m

# Variável lógica

3 > 4

logico <- c(TRUE, FALSE, 3>=4, 4==4, 3<4, 3!=4)
logico
typeof(logico)

# Atributos (metadados)
dado <- c(1,2,3,4,5,6)
attributes(dado)

names(dado) <- c("um", "dois", "tres", "quatro", "cinco", "seis")
attributes(dado)

# Alterando dimensões
dado <- 1:6
# 2 linhas e 3 colunas
dim(dado) <- c(2,3)
dado

attributes(dado)

# Matrizes

m <- matrix(dado, nrow = 2)
m

n <- matrix(dado, nrow=2, byrow = TRUE)
n

# Data e hora

hora <- Sys.time()
hora

# Tabelas (dataframe)

df <- data.frame(
  face = c("ás", "dois", "quatro"),
  naipe = c("ouros", "copas", "paus"),
  valor = c(1, 2, 4)
)

df

# Salvando e lendo arquivos

write.csv(df, file = "cartas.csv", row.names = FALSE, quote = FALSE)

cartas <- read.csv("cartas.csv")