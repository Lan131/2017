library(dplyr)
Compare <- read.csv("~/Compare.csv")

Compare
summary(filter(Compare,Change.in.Res.Pos.Rep.Rate>.05 ),Compare$Change.in.Res.Pos.Rep.Rate )
summary(filter(Compare,Change.in.TC.Rep.Rate>.05 ),Compare$Change.in.TC.Rep.Rate )

A=subset(Compare,Change.in.Res.Pos.Rep.Rate>.05 )
B=subset(Compare,Change.in.TC.Rep.Rate>.05 )



library(plotly)

library(ggplot2)
set.seed(1234)



attach(A)
 qplot(A) 
 
 p=qplot(Change.in.Score, data=A, geom="density", fill=Change.in.Res.Pos.Rep.Rate, alpha=I(.5), 
       main="Distribution of Scores", xlab="Score", 
       ylab="Density")

p <- ggplotly(p)

p

attach(B)
qplot(B) 

p=qplot(Change.in.Score, data=B, geom="density", fill=Change.in.TC.Rep.Rate, alpha=I(.5), 
        main="Distribution of Scores", xlab="Score", 
        ylab="Density")

p <- ggplotly(p)
p
