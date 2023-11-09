
#Sequência de comandos para a construção do intervalo de confiança para a média populacional µ para
#a resolução do exemplo:

#Um pesquisador deseja saber qual a quantidade do princípio ativo de um determinado fármaco. Em uma
#pesquisa, uma amostra aleatória de 8 frascos foram analisadas e obteve-se a média de 4,75mg e desvio padrão
#de 1,83mg.
#Assumindo que a quantidade do princípio ativo segue uma distribuição Normal, encontre o intervalo de
#5% para a quantidade média de princípio ativo do fármaco e interprete


My = 4.75      # media amostral
DPy = 1.83     # desvio padrao amostral
ny = 8         # tamanho da amostra
conf = 0.95    # nivel de confianca
alfa = 1 - conf ; alfa    # nivel de significancia
me_mi=qt((alfa/2),ny-1,lower.tail = FALSE) * (DPy/sqrt(ny)); me_mi  # calculando a margem de erro
IC_mi =cbind (My-me_mi,My+me_mi); IC_mi  


                           
