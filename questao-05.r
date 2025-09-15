req.segundos <- c(100, 200, 300, 400, 500, 600, 700, 800, 900);
tempo.resposta <- c(120, 140, 160, 190, 230, 260, 280, 300, 350);

#(a) Calcule o coeficiente de correla ̧c ̃ao de Pearson entre o n ́umero de requisi ̧c ̃oes por segundo e o tempo de resposta;
correlacao <- cor(req.segundos, tempo.resposta, method = "pearson");
print(correlacao);
#Resultado: [1] 0.9950385. correlação positiva forte entre as variáveis número de requisições por segundo e tempo de resposta.

#(b) Interprete o resultado do coeficiente de correla ̧c ̃ao em termos da rela ̧c ̃ao entre a carga no servidor e o tempo de resposta;

#Resposta: A correlação positiva forte indica que, na amostra observada, há uma tendência clara de que à medida que o número de requisições por segundo aumenta, o tempo de resposta também aumenta. Isso sugere que uma maior carga no servidor está associada a tempos de resposta mais longos, possivelmente devido ao aumento da demanda sobre os recursos do servidor.

#(c) Determine a equa ̧c ̃ao da reta de regress ̃ao linear simples que modela a rela ̧c ̃ao entre X (requisi ̧c ̃oespor segundo) e Y (tempo de resposta);

modelo <- lm(tempo.resposta ~ req.segundos);
coeficientes <- coef(modelo);
print(coeficientes);
#Resultado: (Intercept) req.segundos    
#               83.05556      0.28500

#(d) Utilize o modelo de regress ̃ao para estimar o tempo de resposta se o servidor receber 1100 requisi ̧c ̃oes por segundo.

previsto <- data.frame(req.segundos = 1100);
resultado <- predict(modelo, newdata = previsto);
print(resultado);

#Resultado: [1] 396.5556. Levaria cerca de 396.5556 segundos para responder a 1100 requisições por segundo.