comprimento <- c(8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15);
tax.falhas <- c(2.2, 2.1, 3.0, 2.9, 4.1, 4.5, 6.2, 5.9, 9.8, 8.7, 12.5, 13.1, 19.3, 17.4, 28.2);

correlacao <- cor(comprimento, tax.falhas, method = "pearson");

#Resultado: [1] 0.9305936. correlação positiva forte entre as variáveis comprimento e taxa de falhas.
print(correlacao);

#b) Considerando o resultado do item (a), como você avalia o relacionamento entre comprimento de um cabo e a taxa de falha, na amostra observada?

#Resposta: A correlação positiva forte indica que, na amostra observada, há uma tendência clara de que à medida que o comprimento do cabo aumenta, a taxa de falhas também aumenta. Isso sugere que cabos mais longos podem ser mais propensos a falhas.

#c) Para estabelecer uma equacao de regressao, qual deve ser a variavel dependente e qual deve sera variavel independente?
#Resposta: Na equação de regressão, a variável independente deve ser o comprimento do cabo, enquanto a variável dependente deve ser a taxa de falhas. Isso porque estamos interessados em prever a taxa de falhas com base no comprimento do cabo.

#(d) Estabele ̧ca a equa ̧c ̃ao de regress ̃ao, considerando a resposta do item (c);
modelo <- lm(tax.falhas ~ comprimento);
coeficientes <- coef(modelo);
print(coeficientes);

#(e) Apresente o diagrama de dispers ̃ao e a reta de regress ̃ao obtida em (d);
plot(comprimento, tax.falhas, main = "Reta de Regressão", xlab = "Comprimento (m)", ylab = "Taxa de Falhas (%)")
abline(modelo, col = "black");

#(f) Voce considera adequado o ajuste do modelo de regressao do item (d)? De uma medida dessa adequacao, interpretando-a.

#Resposta: Sim, o ajuste do modelo de regressão parece adequado, considerando a forte correlação positiva entre as variáveis. Uma medida comum para avaliar a adequação do modelo é o R² (coeficiente de determinação). Podemos calcular o R² do modelo:

r_squared <- summary(modelo)$r.squared;
print(r_squared);

#Resultado: [1] 0.8660045. Isso indica que aproximadamente 86.6% da variação na taxa de falhas pode ser explicada pelo comprimento do cabo, o que sugere um bom ajuste do modelo.