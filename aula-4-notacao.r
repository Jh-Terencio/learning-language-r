faces <- c("ás", "dois", "tres", "quatro", "cinco", "seis",
           "sete", "oito", "nove", "dez", "valete", "dama",
           "rei")
naipes <- c("ouros", "copas", "paus", "espada")
# expand.grid faz o produto cartesiano entre os vetores gerando todas as possibilidades de cartas em um baralho
baralho <- expand.grid(face = faces, naipe = naipes)
# head retorna as primeiras ou ultimas partes de um vetor, materiz, tabela, df ou função
# Seu segundo argumento é a quantidade de valores a serem retornados
head(baralho, n = 52L)  
?head

# Dando valores as cartas e adicionando uma coluna novas no baralho
baralho$valor <- c(1:13, 1:13, 1:13, 1:13)
head(baralho, n = 52L)

# Formas de acesso a tabelas
baralho[1,1]
baralho[1, "face"]
baralho[c(1,2),1]
baralho[ , 1]

# Pegando mais de uma coluna
baralho[11, 1:2]
baralho[c(11:14), 1:2]
baralho[c(11,14), c("face", "naipe", "valor")]

# Filtrando uma coluna sem redução para vetor
baralho[c(11,14), "face", drop = FALSE]
baralho[c(11,14), "face"]

# Índices negativos
baralho[-c(14:52), 1] # Retira todos os elementos de 14:52
# baralho[-c(14:52), 1] = baralho[c(1:13), 1]
baralho[1:3, -1]

# Índices vazios
baralho[ , ] # Trás tudo
baralho[1 , ] # Trás toda primeira linha
baralho[ , 1] # Trás toda primeira coluna

# Filtrando colunas usando valores lógicos
baralho[1, c(TRUE, TRUE, FALSE)]


# Filtrando linhas
filtro <- baralho$valor < 3
baralho[filtro, ] 
# ou
baralho[baralho$valor < 3, ]


# Embaralhando o baralho
ordem <- sample(1:nrow(baralho))
ordem

cartas <- baralho[ordem, ]
cartas

# Criando uma função para embaralhar
embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem, ])
}

cartas <- embaralhar(baralho)
cartas