# Estruturas de repetição - Conjunto de dados
weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

bmi <- 0
for (i in 1:length(weight)) {
 bmi[i] <- weight[i]/height[i]^2  
}
bmi

# Removendo variáveis
rm(bmi)
exists("bmi")


# Estrutura de repetição Wwhile

i <- 0
bmi <- 0
while (i <= length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
  i <- i + 1
}
bmi

# Criando função
calcula_bmi <- function(weight, height){
  bmi <- 0
  for (i in 1:length(weight)) {
    bmi[i] <- weight[i]/height[i]^2  
  } 
  return(bmi)
}

bmi <- calcula_bmi(weight, height)

# O R permite você fazer essa função sem a necessidade de usar estruturas de repetição
# Como vamos ter dados de peso e altura do mesmo tamanho, basta botarmos a formula do BMI que todos os valores serão percorridos

calcula_bmi2 <- function(weight, height) {
  resposta_sem_for <- weight/height^2
  return(resposta_sem_for)
}

bmi <- calcula_bmi2(weight, height)
bmi