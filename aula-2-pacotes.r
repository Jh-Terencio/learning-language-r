
library(ggplot2)
#?qplot

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0,2, 0.4, 0.6, 0.8, 1)
x

y <- x^3
y

qplot(x, y)

Funções # 

Função feita pra ver quando jogamos 2 dados, quais são os os possíveis resultado ao jogá-los 3000 vezes

dado <- 1:6
dados <- sample(dado, size = 2, replace = TRUE)
dados
sum(dados)

# Pega 2 numeros aleatórios entre 1 e 6
jogada <- function(){
  dado <- 1:6
  dados <- sample(dado, size = 2, replace = TRUE)
  return(sum(dados))
}

jogada()
# Salva em um array o resultado de jogada() em 10000 jogadas
simulacao_minima <- replicate(10000, jogada())
# Cria o gráfico
qplot(simulacao_minima, binwidth =1)
# Faz a média dos resultados
mean(simulacao_minima)

# Raiz quadrado no R #

require(stats)
require(graphics)

xx <- -9:9
# Calcular raiz quadrado do valor absoluto de xx
plot(xx, sqrt(abs(xx)), col = "red")
lines(spline(xx, sqrt(abs(xx)), n = 101), col = "pink")

# sample #

?sample

simulacao = replicate(10000, sample(2:12, replace = TRUE, prob = c(1,2,3,4,5,6,5,4,3,2,1)/36))
qplot(simulacao, binwidth = 1)
mean(simulacao)