data=na.roughfix(data)

col1 <- colorRampPalette(c("#7F0000","red","#FF7F00","yellow","white", 
                           "cyan", "#007FFF", "blue","#00007F"))
col2 <- colorRampPalette(c("#67001F", "#B2182B", "#D6604D", "#F4A582", "#FDDBC7",
                           "#FFFFFF", "#D1E5F0", "#92C5DE", "#4393C3", "#2166AC", "#053061"))  
col3 <- colorRampPalette(c("red", "white", "blue")) 
col4 <- colorRampPalette(c("#7F0000","red","#FF7F00","yellow","#7FFF7F", 
                           "cyan", "#007FFF", "blue","#00007F"))   

M=cor(sapply(data[,2:5],as.numeric))

corrplot.mixed(M, upper="ellipse", lower="number",col=col3(200))
wb <- c("white","black")
corrplot(M, order="hclust", addrect=2, col=wb, bg="gold2")


attach(data)
fit=randomForest(x=sapply(data,as.numeric)[,3:5],y=data[,2],data=data)
info=fit$importance
info=info[order(fit$importance),]
varImpPlot(fit)


p <- plot_ly(data=data,
             x = c("Average VEI per Year","Random Noise","Industrial Output"),
             y = as.vector(info),
             name = "Importance",
             type = "bar"
)%>%
  layout(title = "Factor Importance",
         xaxis = list(title = "Factors"),
         yaxis = list(title = "Importance"))


p


#Year	AVG_Temp	Industrial Output	rand	Avg VEI Per Year	Sourse
#2001	0.52	3569.29183	0.721075322	2.25	https://www.ngdc.noaa.gov/nndc/struts/results?ge_23=2010&le_23=2016&type_15=Like&query_15=&op_30=eq&v_30=&type_16=Like&query_16=&op_29=eq&v_29=&type_31=EXACT&query_31=None+Selected&le_17=&ge_18=&le_18=&ge_17=&op_20=eq&v_20=&ge_7=&le_7=&bt_24=&st_24=&ge_25=&le_25=&bt_26=&st_26=&ge_27=&le_27=&type_13=Like&query_13=&type_12=Exact&query_12=&type_11=Exact&query_11=&display_look=50&t=102557&s=50
#2002	0.54	3591.47359	0.099408242	2.83	https://data.oecd.org/gdp/gross-domestic-product-gdp.htm
#2003	0.56	3651.90323	0.311825598	3	
#2004	0.59	3733.52661	0.982068619	2.33	
#2005	0.61	3905.35409	0.604361875	3.5	
#2006	0.62	4023.99899	0.209308396	2	
#2007	0.62	4242.81	0.806646356	4	
#2008	0.63	4454.9172	0.186547641	3	
#2009	0.63	4449.82041	0.62862225		
#2010	0.63	3902.38367	0.558236836	2.4	
#2011	0.63	4199.74037	0.999162101	4.67	
#2012	0.65	4375.48531	0.406726685		
#2013	0.68	4401.32919	0.066404245	2.5	
#2014	0.74	4415.8263	0.651725979	3	
#2015	0.79	4524.6719	0.824437909	2	
#2016	0.85	4655.85187	0.348826366		
