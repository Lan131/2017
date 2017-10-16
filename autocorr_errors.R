
#Heteroskedastic Corrected Standard Errors
library(sandwich)
library(lmtest)
vcovHC(fit)
coeftest(fit,vocv.=vcovHC)
waldtest(fit, vcov = vcovHC)

mySummary <- function(model, VCOV) {
  print(coeftest(model, vcov. = VCOV))
  print(waldtest(model, vcov = VCOV))
}
#Heteroskedastic Corrected Standard Errors
mySummary(fit,vcovHC)
#Not corrected
summary(fit)
