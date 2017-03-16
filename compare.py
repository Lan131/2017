import numpy as np
import pandas as pd
import plotly
import plotly.plotly as py
import plotly.figure_factory as ff
import matplotlib.pyplot as plt
import matplotlib

#matplotlib.style.use('ggplot')

#read data
df1=pd.read_csv("file1.csv")
df2=pd.read_csv("file2.csv")
#df1['New']=df1['A']+df2['B']
print( np.unique(df1['B'], return_inverse=True))


#spot check data, works well with small amounts of data
print(df1.sum())
print(df2.sum())

df1['y'] = np.where(df1['B'] < .5 , 1, np.where(df1['B'] > .5, -1, 0))
df2['y'] = np.where(df2['B'] < .5 , 1, np.where(df2['B'] > .5, -1, 0))


print(df1)

#Calculate difference
if df1.sum().sum()==df2.sum().sum():
    print("Check passed: They are the same.")
else:
    print("Check failed: They are different by "+str((abs(df1.sum().sum()-df2.sum().sum()))/df2.sum().sum()*100)+"%.")
#df_1=np.reshape(np.array(df1), (-1,1))
#df_2=np.reshape(np.array(df2), (-1,1))
#data=pd.DataFrame({'first':df_1.tolist(), 'second':df_2.tolist()})


#pd.scatter_matrix(data, alpha=0.2, figsize=(6, 6), diagonal='kde')
#plt.show()
#Tcl enviornment variable not working

#Make plot of set 1 vs set 2 with plotly

#plotly.tools.set_credentials_file(username='MichaelLaniere8a', api_key='DctlvSdYMeJccv3o2rRG')
#colorscale = ['#7A4579', '#D56073', 'rgb(236,158,105)', (1, 1, 0.2), (0.98,0.98,0.98)]

#print([float(i) for i in np.array(data['first']).tolist()])

#fig = ff.create_2d_density(
#    x=np.array(data['first']).values, y=np.array(data['second']).values, colorscale=colorscale,
#    hist_color='rgb(255, 237, 222)', point_size=3
#)

#py.plot(fig, filename='histogram_subplots')
