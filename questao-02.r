#Um engenheiro de software deseja prever o tempo de resposta de uma API com base no número de requisições por segundo que o servidor recebe. Foram coletados os dados aprsentados na tabela abaixo:

#Dados
req.segundos <- c(10,20,30,40,50);
respostas <- c(0.5, 0.7, 1.0, 1.2, 1.5);

#Modelo de regressão linear
modelo <- lm(respostas ~ req.segundos);
coeficientes <- coef(modelo);
print(coeficientes);


#Determine a reta de regress ̃ao linear simples
plot(req.segundos, respostas, main = "Reta de Regressão", xlab = "Requisições/s", ylab = "Tempo (s)")
abline(modelo, col = "black");



#Estime o tempo de resposta se o servidor receber 45 requisi ̧c ̃oes por segundo.
previsto <- data.frame(req.segundos = 45);
resultado <- predict(modelo, newdata = previsto);

#Resultado: [1] 1.355. Levaria cerca de 1.355 segundos para responder a 45 requisições por segundo.
print(resultado);