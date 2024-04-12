# fatores são variáveis que se referem a dados categóricos

pain <- c(0, 3, 2, 2, 1)
fpain <- factor(pain, levels = 0:3, ordered = TRUE)
fpain

levels(fpain) <- c("sem", "baixa", "média", "alta")
fpain

# Exemplo do bmi
weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

# Consideremos a variável altura, pessoas com menos de 1.7m
# devem ser classificadas como pequenas, pessoas com 1.9m
# devem ser classificadas como altas e pessoas do meio
# devem ser classificadas como média

fheight <- cut(height, breaks = c(0, 1.7, 1.9, .Machine$double.xmax), ordered = TRUE)
# cut estabelece os pontos de corte, basicamente está dizendo que
# pegamos o intervalos de 0 até 1.7, de 1.7 até 1.9 e de1.9 até o maior valor que um double pode ter
fheight

levels(fheight) <- c("baixa", "média", "alta")
fheight