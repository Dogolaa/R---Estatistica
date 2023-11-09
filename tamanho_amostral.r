#sequência de comandos R para a para calcular tamanho amostral para
#estimar a proporção populacional π com uma margem de erro desejada, na resolução do exemplo
#Considerando pˆ =410/1000 = 0, 41,  qual deverá ser o tamanho da amostra para se
#ter um erro de estimação (med : margem de erro desejada) de no máximo 2% (ou seja, 0,02), considerando um
#nível de confiança de 95%?



pap = 0.41 #proporcao na amostra piloto
merrod = 0.02 #margem de erro desejada,deve sempre ser em DECIMAL
alfa = 0.05 # nivel de significancia
n_novo_pi = ((qnorm(alfa/2,lower.tail = FALSE) * (sqrt (pap*(1-pap))/merrod)))^2 ; n_novo_pi

#teste