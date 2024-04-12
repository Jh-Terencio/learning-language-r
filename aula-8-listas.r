# Listas são objetos que contem elementos de diferentes tipos
# Para criar uma lista utilizamos a função list()

weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

mybag <- list(weight, height, subject, 0, "a")
mybag

# Cortando a lista
slice <- mybag[1]
slice
is.list(slice)

slice <- mybag[c(1,3)]
slice

# Pegar membros de uma lista
w <- mybag[[1]]
w
is.list(w)

# Criando listas com atributos
mybag <- list(weight=weight, height=height, subject=subject, valor=0, nome="a")
mybag

# Adicionando atributos
mybag$bmi <- mybag$weight/mybag$height^2
mybag

# Removendo valores
mybag[[4]] <- NULL
mybag$nome<- NULL
mybag