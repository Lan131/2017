

#Load data
import tensorflow as tf
import pandas as pd
import numpy as np
url = 'http://vincentarelbundock.github.com/Rdatasets/csv/COUNT/medpar.csv'
data=pd.read_csv(url)




X=data[['type2', 'type3','hmo','white']].astype(np.float64)
Y=data[['los']].astype(np.float32)



#X,y,data are all pandas dataframes
def NB(X,y,data,early_stopping_rounds=3,stopping_threshold=.00001,max_steps=1000):
    
    #Define variables and session
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
    
    #Implement Early Stopping. If it doesn't imporove more than
    prior=100000000
    current=100
    n=1
    Flag=0
    #Open tensorflow session
    while( (max(abs(prior),abs(current))-min(abs(prior),abs(current)))/max(abs(prior),abs(current))>stopping_threshold and Flag<early_stopping_rounds):
        if((max(abs(prior),abs(current))-min(abs(prior),abs(current)))/max(abs(prior),abs(current))>stopping_threshold):
            Flag=0 #If the loss doesn't imporove by .001% three times in a row exit.
        prior=current
        sess.run(train)
        if(n==1):
            print("The value of the likelihood function at the MLE is the absolute value of ",sess.run(loss))
        else:
            print(sess.run(loss))
        current=sess.run(loss)        
        n=n+1
        if((max(abs(prior),abs(current))-min(abs(prior),abs(current)))/max(abs(prior),abs(current))<=stopping_threshold):
            print("Steps:",n,"\nBeta vector:\n",sess.run(B),"\nAlpha:", sess.run(a))
            Flag=Flag+1
        if(n>=max_steps):  #run a max of 1000 times
            print(n,sess.run(B), sess.run(a))
            break
    #Calculate and return AIC
    AIC=2*X.columns.shape[0]+1-2*sess.run(loss)
    print("AIC:", AIC)
    
    #Find Hessian

    def replace_none_with_zero(l):
      return [0 if i==None else i for i in l] 

    tf.reset_default_graph()

    x = tf.Variable(tf.random_normal([1,size]))
    y = tf.Variable(tf.random_uniform([1]))
    loss = y * tf.log(sess.run(a))+y*(tf.matmul(x,sess.run(B)))-(y+1/sess.run(a))*tf.log(1+tf.to_float(sess.run(a))*tf.exp(tf.matmul(x,sess.run(B))))+tf.lgamma(y+1/sess.run(a))-tf.lgamma(1/sess.run(a)) 
    grads = tf.gradients([loss], [x, y])
    hess0 = tf.gradients([grads[0]], [x])
    sess = tf.InteractiveSession()
    sess.run(tf.global_variables_initializer())
    print("Variance of predictors\n:",sess.run(hess0))                                                       
 




NB(X,Y,data)







#http://stackoverflow.com/questions/35266370/tensorflow-compute-hessian-matrix-and-higher-order-derivatives
#http://www.mathematica-journal.com/2013/06/negative-binomial-regression/





