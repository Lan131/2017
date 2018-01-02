rm(list=ls())

#install.packages("RODBC")
library(RODBC)
library(ggplot2)
library(dplyr)
ch <- odbcDriverConnect("Driver=Teradata;DBCName=TDXDW;UID=p2738395;PWD=Charter123")

Sep_bbt=as.data.frame(sqlQuery(ch, paste('select * from XbiAqIntRptV.RptBBTScrcrdTechMthLgcy where Thrufsclmthsk=201709;')))
Oct_bbt=as.data.frame(sqlQuery(ch, paste('select * from XbiAqIntRptV.RptBBTScrcrdTechMthLgcy where Thrufsclmthsk=201710')))
Nov_bbt=as.data.frame(sqlQuery(ch, paste('select * from XbiAqIntRptV.RptBBTScrcrdTechMthLgcy where Thrufsclmthsk=201711')))


odbcGetErrMsg(ch)

str(Sep_bbt)
str(Oct_bbt)
str(Nov_bbt)

View(summary(Sep_bbt))
View(summary(Oct_bbt))
View(summary(Nov_bbt))



Fct_BBT=as.data.frame(sqlQuery(ch, paste('select * from XBIAqIntRptV.FctBBTScrcrdTechSumMthLgcy Where DimFsclMthSk in (201710,201709)')))
Oct_fct= filter(Fct_BBT,DimFsclMthSk== 201710)
Sep_fct= filter(Fct_BBT,DimFsclMthSk== 201709)


raw=read.csv("BBT_BHN_AGG_20171223.csv",header=T)
a1 = group_by(raw, SCMonthYear) %>% select(IcomsID,SCMonthYear)%>%summarise( n_distinct(IcomsID))

plot(a1)

PLD_Oct=as.data.frame(sqlQuery(ch, paste('select * from XBIAqIntRptV.PldBBTScrcrdSumDlyLgcy where ScMonthYear=201710;')))
PLD_Sep=as.data.frame(sqlQuery(ch, paste('select * from XBIAqIntRptV.PldBBTScrcrdSumDlyLgcy where ScMonthYear=201709;')))
a2 = group_by(PLD_Sep, SCMonthYear) %>% select(TechID,SCMonthYear)%>%summarise( n_distinct(TechID))

a3 = group_by(PLD_Oct, SCMonthYear) %>% select(TechID,SCMonthYear)%>%summarise( n_distinct(TechID))

PLD_Oct_cnt=as.data.frame(sqlQuery(ch, paste('select count(*) ,TechID,ScMonthYear from XBIAqIntRptV.PldBBTScrcrdSumDlyLgcy where ScMonthYear=201710 group by TechID, ScMonthYear;')))
PLD_Sep_cnt=as.data.frame(sqlQuery(ch, paste('select count(*) ,TechID,ScMonthYear from XBIAqIntRptV.PldBBTScrcrdSumDlyLgcy where ScMonthYear=201709 group by TechID, ScMonthYear;')))

hist(PLD_Oct_cnt[,1])
hist(PLD_Sep_cnt[,1])


dat <- data.frame(x = c(PLD_Sep_cnt[,1], PLD_Oct_cnt[,1]),month = factor(rep(9:10, c(length(PLD_Sep_cnt[,1]),length(PLD_Oct_cnt[,1])))))
ggplot(dat, aes(x=x, fill=month)) + geom_histogram(alpha=0.5, position="identity")+ggtitle("Distinct TechIDs in PLD")




PLD_Nov_cnt=as.data.frame(sqlQuery(ch, paste('select count(*) ,TechID,ScMonthYear from XBIAqIntRptV.PldBBTScrcrdSumDlyLgcy where ScMonthYear=201711 group by TechID, ScMonthYear;')))

dat <- data.frame(x = c( PLD_Oct_cnt[,1],PLD_Nov_cnt[,1]),month = factor(rep(10:11, c(length(PLD_Oct_cnt[,1]),length(PLD_Nov_cnt[,1])))))
ggplot(dat, aes(x=x, fill=month)) + geom_histogram(alpha=0.5, position="identity")+ggtitle("Distinct TechIDs in PLD")


PLD_OCT=as.data.frame(sqlQuery(ch, paste('select * from XBIAqIntRptV.PldBBTScrcrdSumDlyLgcy where ScMonthYear=201710;' )))


cnt_data=read.csv("counts.csv",header=T)
plot(cnt_data)


#Compare to OCT

ks.test(Sep_bbt$ProdAct,Oct_bbt$ProdAct)


df <- data.frame(x = c(Sep_bbt$ProdAct, Oct_bbt$ProdAct),ggg = factor(rep(1:2, c(length(Sep_bbt$ProdAct),length(Oct_bbt$ProdAct)))))

df <- df[order(df$x), ]
df$ecdf <- ave(df$x, df$ggg, FUN=function(x) seq_along(x)/length(x))

ggplot(df, aes(x, ecdf, colour = ggg)) + geom_line() + scale_colour_hue(name="my legend", labels=c('Sep','Oct'))

dat <- data.frame(x = c(Sep_bbt$ProdAct, Oct_bbt$ProdAct),ggg = factor(rep(1:2, c(length(Sep_bbt$ProdAct),length(Oct_bbt$ProdAct)))))

ggplot(dat, aes(x=x, fill=ggg)) + geom_histogram(alpha=0.2, position="identity")




#compare to NOV



ks.test(Sep_bbt$ProdAct,Nov_bbt$ProdAct)
df <- data.frame(x = c(Nov_bbt$ProdAct, Oct_bbt$ProdAct),ggg = factor(rep(1:2, c(length(Sep_bbt$ProdAct),length(Nov_bbt$ProdAct)))))

df <- df[order(df$x), ]
df$ecdf <- ave(df$x, df$ggg, FUN=function(x) seq_along(x)/length(x))

ggplot(df, aes(x, ecdf, colour = ggg)) + geom_line() + scale_colour_hue(name="my legend", labels=c('Sep','Nov'))

dat <- data.frame(x = c(Sep_bbt$ProdAct, Nov_bbt$ProdAct),ggg = factor(rep(1:2, c(length(Sep_bbt$ProdAct),length(Nov_bbt$ProdAct)))))

ggplot(dat, aes(x=x, fill=ggg)) + geom_histogram(alpha=0.2, position="identity")



odbcClose(ch)
