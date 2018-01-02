#install.packages("RODBC")
library(RODBC)
library(ggplot2)
library(dplyr)
ch <- odbcDriverConnect("Driver=Teradata;DBCName=TDXDW;UID=p2738395;PWD=Charter123##")

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
a1 <- group_by(raw, SCMonthYear) %>% summarise(a2, arr = count(SCMonthYear, na.rm = TRUE))



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
