# IMPORTAÇÃO DA BASE
getwd()
base = read.csv2("PE_Num_Tratados.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
View(base)

# AJUSTE DOS TIPOS DE DADOS
str(base)
base$MEDIA_DAS_NOTAS = as.numeric(base$MEDIA_DAS_NOTAS)
base$ESCOLARIDADE_PARTICIPANTE = as.numeric(base$ESCOLARIDADE_PARTICIPANTE)
base$ESCOLARIDADE_PAI = as.numeric(base$ESCOLARIDADE_PAI)
base$ESCOLARIDADE_MAE = as.numeric(base$ESCOLARIDADE_MAE)
base$RENDA_FAMILIAR = as.numeric(base$RENDA_FAMILIAR)
base$INCLUSAO_DIGITAL = as.numeric(base$INCLUSAO_DIGITAL)

# ESTATÍSTICA DESCRITIVA DA BASE I - MINÍMO, MÁXIMO, QUARTIS, MÉDIA E MEDIANA
summary(base$MEDIA_DAS_NOTAS)
summary(base$ESCOLARIDADE_PARTICIPANTE)
summary(base$ESCOLARIDADE_PAI)
summary(base$ESCOLARIDADE_MAE)
summary(base$RENDA_FAMILIAR)
summary(base$INCLUSAO_DIGITAL)

# ESTATÍSTICA DESCRITIVA DA BASE II - VARI NCIA E DESVIO PADRÃO
var(base$MEDIA_DAS_NOTAS)
sd(base$MEDIA_DAS_NOTAS)
var(base$ESCOLARIDADE_PARTICIPANTE)
sd(base$ESCOLARIDADE_PARTICIPANTE)
var(base$ESCOLARIDADE_PAI)
sd(base$ESCOLARIDADE_PAI)
var(base$ESCOLARIDADE_MAE)
sd(base$ESCOLARIDADE_MAE)
var(base$RENDA_FAMILIAR)
sd(base$RENDA_FAMILIAR)
var(base$INCLUSAO_DIGITAL)
sd(base$INCLUSAO_DIGITAL)

# GRÁFICOS DE ALGUMAS VARIÁVEIS
hist(base$MEDIA_DAS_NOTAS, labels = T, col = "green", breaks = 12, right = F, main = "Histograma Média das Notas", xlab = "Média das Notas", ylab = "Frequência Absoluta")
hist(base$RENDA_FAMILIAR, labels = T, col = "green", breaks = 8, right = F, main = "Histograma da Renda Familiar", xlab = "Renda Familiar", ylab = "Frequência Absoluta")
boxplot(base$MEDIA_DAS_NOTAS, labels = T, main = "Boxplot Média das Notas")
boxplot(base$RENDA_FAMILIAR, labels = T, main = "Boxplot Renda Familiar")
plot(base$RENDA_FAMILIAR, base$MEDIA_DAS_NOTAS, col = "blue", main = "Média das notas por renda familiar", xlab = "Renda Familiar",	ylab = "Média das Notas")
plot(base$INCLUSAO_DIGITAL, base$MEDIA_DAS_NOTAS, col = "blue", main = "Média das notas por índice de inclusão digital", xlab = "Índice de inclusão digital",	ylab = "Média das Notas")

# CORRELAÇÃO DA BASE
corbase = cor(base)
library(corrplot)
corrplot(corbase)
corbase