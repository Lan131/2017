library(dplyr)
dat=mt_tech_scorecard
dat=dat[,-c(48:52)]
perc.rank <- function(x) trunc(rank(x))/length(x)
dat %>% group_by(KMADesc) %>% transmute(perc.rank(KMARnk))%>% write.csv(.,file = "~/kma.csv")
