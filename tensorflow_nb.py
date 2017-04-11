
# coding: utf-8

# In[1]:

#Linear regression via Tensorflow LSE optimization

import numpy as np

num_points = 50
vectors_set = []
for i in range(num_points):
         x1= np.random.normal(0.0, 0.55)
         y1= x1 * 0.1 + 0.3 + np.random.normal(0.0, 0.03)
         vectors_set.append([x1, y1])

x_data = [v[0] for v in vectors_set]
y_data = [v[1] for v in vectors_set]

import matplotlib.pyplot as plt

#Graphic display
plt.plot(x_data, y_data, 'ro')
plt.legend()
plt.show()

import tensorflow as tf

W = tf.Variable(tf.random_uniform([1], -1.0, 1.0))
b = tf.Variable(tf.zeros([1]))
y = W * x_data + b

loss = tf.reduce_mean(tf.square(y - y_data))
optimizer = tf.train.AdamOptimizer(learning_rate=0.1, beta1=0.9, beta2=0.999, epsilon=1e-08)
train = optimizer.minimize(loss)

init = tf.global_variables_initializer()

sess = tf.Session()
sess.run(init)

for step in range(100):
     sess.run(train)
     print(step, sess.run(W), sess.run(b))
     print(step, sess.run(loss))

     #Graphic display
     plt.plot(x_data, y_data, 'ro')
     plt.plot(x_data, sess.run(W) * x_data + sess.run(b))
     plt.xlabel('x')
     plt.xlim(-2,2)
     plt.ylim(0.1,0.6)
     plt.ylabel('y')
     plt.legend()
     plt.show()


# In[2]:

#NB regression
from statsmodels.base.model import GenericLikelihoodModel
import numpy as np
from scipy.stats import nbinom

def _ll_nb2(y, X, beta, alph):
    mu = np.exp(np.dot(X, beta))
    size = 1 / alph
    prob = size / (size + mu)
    ll = nbinom.logpmf(y, size, prob)
    return ll



class NBin(GenericLikelihoodModel):
    def __init__(self, endog, exog, **kwds):
        super(NBin, self).__init__(endog, exog, **kwds)
    def nloglikeobs(self, params):
        alph = params[-1]
        beta = params[:-1]
        ll = _ll_nb2(self.endog, self.exog, beta, alph)
        return -ll
    def fit(self, start_params=None, maxiter=10000, maxfun=5000, **kwds):
        if start_params == None:
            # Reasonable starting values
            start_params = np.append(np.zeros(self.exog.shape[1]), .5)
            start_params[0] = np.log(self.endog.mean())
        return super(NBin, self).fit(start_params=start_params, maxiter=maxiter, maxfun=maxfun,**kwds)
import pandas as pd
import patsy
   
url = 'http://vincentarelbundock.github.com/Rdatasets/csv/COUNT/medpar.csv'
medpar = pd.read_csv(url)
medpar.head()
y, X = patsy.dmatrices('los~type2+type3+hmo+white', medpar) 
mod = NBin(y, X)
res = mod.fit()
print("params:",res.params)
print("Bse:",res.bse)
print("pvalue:",res.pvalues)
print("AIC:",res.aic)


# In[3]:

#Load data
import tensorflow as tf
import pandas as pd
url = 'http://vincentarelbundock.github.com/Rdatasets/csv/COUNT/medpar.csv'
data=pd.read_csv(url)
#ones=np.ones((5,), dtype=np.float)
data['int']=pd.Series(np.ones(len(X)))
X=data[['int','type2', 'type3','hmo','white']].astype(np.float64)
print(X)


Y=data[['los']].astype(np.float32)
y=Y.as_matrix()
size=X.columns.shape
x=X.as_matrix().astype(np.float32)
B=tf.Variable(tf.random_normal([4,1]))
a = tf.Variable(tf.random_uniform([1]))
L=y * tf.log(a)+y*(tf.matmul(x,B))*tf.log(1+tf.to_float(a)*tf.exp(tf.matmul(x,B)))+tf.lgamma(y+1/a)-tf.lgamma(1/a)                                                                                                   


# In[ ]:

loss = tf.reduce_sum(-L)
optimizer = tf.train.AdamOptimizer(learning_rate=0.1, beta1=0.9, beta2=0.999, epsilon=1e-08)
train = optimizer.minimize(loss)
init = tf.global_variables_initializer()
sess = tf.Session()
sess.run(init)


# In[ ]:


for step in range(100):
     sess.run(train)
     print(step, sess.run(B), sess.run(a))
     print("The value of the MLE is the absolute value of ",sess.run(loss))
  
    
    


# In[ ]:




# In[ ]:




# In[ ]:



