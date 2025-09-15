# Um pesquisador interessado em testar o efeito de um medicamento em reduzir o suor aplicou o produto em um dos bra ̧cos, escolhido ao acasso, em uma amostra de nove indiv ́ıduos. O outro bra ̧co serviu de controle. O suor durante uma atividade f ́ısica foi mensurado em ml nos dois bra ̧cos. O pesquisador estava interessado em saber se existe correla ̧c ̃ao entre as medidas de suor do bra ̧co n ̃ao tratado (X) e do bra ̧co tratado (Y ). 
#Calcule o coeficiente de correla ̧c ̃ao linear de Pearson entre X e Y . As mensura ̧c ̃oes s ̃ao apresentadas a seguir:

X <- c(6.625, 5.508, 4.279, 2.104, 1.117, 1.308, 5.881, 7.796, 2.688)
Y <- c(0.113, 0.142, 0.067, 0.083, 0.055, 0.121, 0.207, 0.076, 0.101)

correlacao <- cor(X, Y, method = "pearson")

print(correlacao)

#Resultado: [1] 0.3217561. correlação positiva moderada entre as variáveis X e Y.
