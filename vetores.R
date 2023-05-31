# Instalando pacotes

install.packages("ggplot2")

# Carregando um pacote

library(ggplot2)


#Vetores

cidades <- c("São Paulo",
             "Brasilia",
             "Birigui",
             "Joinville")

cidades

temperatura <- c(32,22,41,12)

regiao <- c(1,2,2,3)

?c()


# Acessando o primeiro elemento

cidades[1]

# Acessando um intervalo de elementos

temperatura[1:3]

# Copiando um vetor

cidades2 <- cidades
cidades2

# Excluindo o segundo elemento da consulta

temperatura[-2]

# Alterando um vetor

cidades2[3] <- "Belo Horizonte"

# Adicionando um novo elemento

cidades2[5] <- "Curitiba"

cidades2

# Deletando o vetor

cidades2 <- NULL

cidades2

# Fatores

?factor

UF <- factor(c("SP","DF","SP","SC"))

UF

# Fatores ordenados

grau.instrucao <- factor(c("Nivel Médio",
                           "Superior",
                           "Nivel Médio",
                           "Fundamental"),
                  levels =c("Fundamental",
                            "Nivel Médio",
                            "Superior"),
                  ordered = TRUE)

grau.instrucao


# Listas

?list()

pessoa <- list(sexo = 'M', cidades = "São Paulo", idade = 20)

pessoa


# Acessando o primeiro elemnto da lista

pessoa[1]

# Acessando o valor do primeiro elemento da lista

pessoa[[1]]

# Editando a lista

pessoa[["idade"]] <- 22

pessoa

# Deletando elemento da lista

pessoa [["idade"]] <- NULL

pessoa

# Filtrando elementos da lista

pessoa[c("cidades","idade")]


# Lista de listas

cidadess <- list(cidades = cidades,
                 temperatura = temperatura,
                 regiao = regiao)
cidadess


# Criando um data frame com vetores

df <- data.frame(cidades,temperatura)
df


# Criando um data frame com lista

df2 <- data.frame(cidadess)

df2


# Filtrando valores do data frame
# Recuperando o valor da linha 1, coluna 2

df[1,2]

# Todas as linhas da primeira coluna

df[ , 1]

# Primeira linha e todas as colunas

df[1, ]

# Selecionando as 3 primeiras linhas
# Da primeira e ultima coluna

df2[c(1:3),c(1,3)]


# Verificando o nome das colunas

names(df)

# Verificando numero de linhas x colunas

dim(df)

# Verificando os tipos de dados

str(df)


# Acessar uma coluna do dataframe

df$cidades
df['cidades']


# Matrizes

?matrix()
m <- matrix(seq(1:9), nrow = 3)
m 

m2 <- matrix(seq(1:25),
             ncol = 5,
             byrow = TRUE,
             dimnames = list(c(seq(1:5)),
                             c('A','B','C','D','E')
                             )
             )
m2


# Filtrando a matriz

m2[c(1:2),c('B','C')]
