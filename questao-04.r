peso <- c(12, 13, 14, 14, 16, 18, 19, 22, 24, 26)
rendimento <- c(16, 14, 14, 13, 11, 12, 09, 09, 08, 06)

#(a) Calcule o coeficiente de correla ̧c ̃ao de Pearson;
coeficiente <- cor(peso, rendimento, method = "pearson")
print(coeficiente)

#Resultado: [1] -0.9584929

#(b) Considerando o resultado do item (a), como vocˆe avalia o relacionamento entre peso e rendimento,na amostra observada?

#A coorrelação entre peso e rendimento é negativa e forte. Isso significa que quanto maior o peso do carro, menor é o seu rendimento em km/l. Essa relação inversa sugere que carros mais pesados tendem a consumir mais combustível, resultando em um menor rendimento.

#(c) Para estabelecer uma equacao de regressao, qual deve ser a variavel dependente e qual deve sera variavel independente?
#Resposta: Na equação de regressão, a variável independente deve ser o peso do carro, enquanto a variável dependente deve ser o rendimento em km/l. Isso porque estamos interessados em prever o rendimento com base no peso do carro.

#(d) Estabeleca a equacao de regressao, considerando a resposta do item (c);
modelo <- lm(rendimento ~ peso);
coeficientes <- coef(modelo);
print(coeficientes);

#Resultado: (Intercept)       peso
#          22.2500000  -0.6207865

#(e) Apresente o diagrama de dispersao e a reta de regressao obtida em (d);
plot(peso, rendimento, main = "Reta de Regressão", xlab = "Peso (kg)", ylab = "Rendimento (km/l)")
abline(modelo, col = "black");

#(f) Voce considera adequado o ajuste do modelo de regressao do item (d)? De uma medida dessa adequacao, interpretando-a.
#Resposta: Sim, o ajuste do modelo de regressão parece adequado, considerando a forte correlação negativa entre as variáveis. Uma medida comum para avaliar a adequação do modelo é o R² (coeficiente de determinação). Podemos calcular o R² do modelo:
r_squared <- summary(modelo)$r.squared;
print(r_squared);
#Resultado: [1] 0.9187086. Isso indica que aproximadamente 91.87% da variação no rendimento pode ser explicada pelo peso do carro, o que sugere um bom ajuste do modelo.

#(g) Voce considera seu estudo capaz de predizer o rendimento esperado de um ve ́ıculo com peso de 7.000 kg?

#Resposta: Sim, o estudo pode ser usado para predizer o rendimento esperado de um veículo com peso de 7.000 kg, utilizando a equação de regressão obtida no item (d). Mas a extrapolação para valores fora do intervalo dos dados observados (nesse caso, 12 a 26 kg) pode levar a previsões menos confiáveis. Logo, embora seja possível fazer a previsão, deve-se ter cautela ao interpretar os resultados para pesos muito diferentes dos observados na amostra.
previsto <- data.frame(peso = 7000);
resultado <- predict(modelo, newdata = previsto);
print(resultado);
#Resultado: [1] -4323.256. Isso indica que, de acordo com o modelo, um veículo com peso de 7.000 kg teria um rendimento negativo, o que não faz sentido prático. Isso demonstra a necessidade de cautela ao extrapolar além do intervalo dos dados observados.