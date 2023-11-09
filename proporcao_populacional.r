#comandos R para a construção do intervalo de confiança para
#a proporção populacional π, pela aproximação da distribuição Normal, na resolução do exemplo 

#Um instituto promoveu uma pesquisa para saber as intenções de voto para prefeito de uma cidade. Foi
#realizada a uma amostragem aleatória obtendo 1000 respostas de eleitores, das quais 410 eram em favor do
#candidato A. Construa um intervalo de 95% de confiança IC[95%] para a proporção de votos (π) do candidato

n = 1000     #tamanho da amostra
ns = 410     #numero de sucessos em n                     
pe= ns/n ; pe    #proporcao ammostral
conf = 0.95      #nivel de confianca
alfa = 1-conf;alfa     #nivel de significancia
me_p = qnorm (1-alfa/2) * (sqrt(pe * (1-pe))/sqrt(n)); me_p   #calculando a margem de erro
IC_p=cbind(pe-me_p, pe + me_p);IC_p