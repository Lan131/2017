
# coding: utf-8

# In[1]:


#Load data
import tensorflow as tf
import pandas as pd
import numpy as np
url = 'http://vincentarelbundock.github.com/Rdatasets/csv/COUNT/medpar.csv'
data=pd.read_csv(url)



# In[2]:

X=data[['type2', 'type3','hmo','white']].astype(np.float64)
Y=data[['los']].astype(np.float32)


# In[3]:


#X,y,data are all pandas dataframes
def NB(X,y,data):
    X = pd.concat([pd.Series(np.ones(len(X))),X.reset_index(drop=True)], axis=1)
    y=Y.as_matrix()
    size=X.columns.shape[0]
    x=X.as_matrix().astype(np.float32)
    B=tf.Variable(tf.random_normal([size,1]))
    a = tf.Variable(tf.random_uniform([1]))
    L=y * tf.log(a)+y*(tf.matmul(x,B))-(y+1/a)*tf.log(1+tf.to_float(a)*tf.exp(tf.matmul(x,B)))+tf.lgamma(y+1/a)-tf.lgamma(1/a)                                                                                                   
    loss = tf.reduce_sum(-L)
    optimizer = tf.train.AdamOptimizer(learning_rate=0.1, beta1=0.9, beta2=0.999, epsilon=1e-08)
    train = optimizer.minimize(loss)
    init = tf.global_variables_initializer()
    sess = tf.Session()
    sess.run(init)
    
    
    prior=100000000
    current=100
    n=1
    Flag=0
    
    while( (max(abs(prior),abs(current))-min(abs(prior),abs(current)))/max(abs(prior),abs(current))>.00001 and Flag<3):
        if((max(abs(prior),abs(current))-min(abs(prior),abs(current)))/max(abs(prior),abs(current))>.00001):
            Flag=0
        prior=current
        sess.run(train)
        print("The value of the MLE is the absolute value of ",sess.run(loss))
        current=sess.run(loss)        
        n=n+1
        if((max(abs(prior),abs(current))-min(abs(prior),abs(current)))/max(abs(prior),abs(current))<=.00001):
            print("Steps:",n,"\nBeta vector: ",sess.run(B),"\nAlpha:", sess.run(a))
            Flag=Flag+1
        if(n>=1000):
            print(n,sess.run(B), sess.run(a))
            break


# In[4]:

NB(X,Y,data)


# In[ ]:

#http://stackoverflow.com/questions/35266370/tensorflow-compute-hessian-matrix-and-higher-order-derivatives
#http://www.mathematica-journal.com/2013/06/negative-binomial-regression/


# In[ ]:



