###############################

# Autores
# Bernardo Stocco Kruschewsky Whehaibe
# Henry Demétrio

# Data de criação: 08/03/2022

# Instalando o pacote igraph

install.packages('igraph')

# Instalando a biblioteca igraph

library(igraph)

# Comando que permite abrir arquivos CSV que contém a
# matriz criada

matriz1 <- read.table(row.names=1,file=file.choose(),header = TRUE,sep = ';')

# Comando que exibe a matriz criada

matriz1

# Comando que ajusta a tabela em CSV para o formato
# de matriz

matriz1 <- as.matrix(matriz1)

# Comando que cria o objeto associado ao primeiro grafo, utilizando
# a matriz de adjacência

grafo1 <- graph.adjacency(matriz1, mode='undirected', weighted=TRUE)

# Comando que plota o grafo

plot(grafo1)

# Comando que exibe o mesmo grafo com os valores da matriz de adjacência nas
# arestas

plot(grafo1, edge.label = round(E(grafo1)$weight,3))

# Comando que exibe o mesmo grafo através da ferramenta TKPLOT
tkplot(grafo1)

# Comando que calcula os graus de cada vértice do grafo
degree(grafo1)

# Comandos que calculam as proximidades de cada vértice
# do grafo

proximidade = closeness(grafo1)
proximidade
1/proximidade
