# REGRESI LOGISTIK Multiple
churn <- read.csv("C:/Users/HP/Downloads/STATISTIKA/projeknafa/churn_logistik.csv", sep =';')
View(churn)
colnames(churn)


# regresi logistik biner multiple
binom.multi<-glm(Churn ~ gender + SeniorCitizen +Partner+Dependents+tenure+PhoneService
                 +MultipleLines+InternetService+OnlineSecurity+OnlineBackup+DeviceProtection
                 +TechSupport+StreamingTV+StreamingMovies+Contract+ PaperlessBilling+PaymentMethod
                 +MonthlyCharges+TotalCharges,
                 family = binomial(link="logit"),data = churn) 
summary(binom.multi)

binom2 <- glm(Churn ~ Partner+OnlineBackup+DeviceProtection
              +TechSupport+StreamingMovies+Contract
              +MonthlyCharges,
              family = binomial(link="logit"),data = churn)
summary(binom2)
# +TotalCharges
##### uji simultan ##### 
#install.packages("lmtest")
library(lmtest)
lrtest(binom.multi) 

#####  uji parsial ##### 
#install.packages("car")
library(car)
parsial = Anova(binom.multi,type="II",test="Wald")
parsial
results <- ifelse(parsial$`Pr(>Chisq)` < 0.05, 
                  "Tolak H0: P-value < 0,05", 
                  "Terima H0: P-value > dari 0,05")

# Menampilkan hasil
print(results)

library(car)
vif(binom.multi)

# odds ratio 
library(questionr)
odds.ratio(binom.multi)

#uji kecocokan dengan metode hosmer-lemeshow
#install.packages("ResourceSelection")
library(ResourceSelection)
hl<-hoslem.test(binom.multi$y,fitted(binom.multi), g=4)
hl
