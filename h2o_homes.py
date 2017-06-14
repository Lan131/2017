
# coding: utf-8

# In[1]:

import h2o
from h2o.estimators.deeplearning import H2ODeepLearningEstimator
h2o.init()


# In[2]:

data = h2o.import_file("merged_data.csv")



# In[8]:

data=data[data['transactiondate']]


# In[9]:

data=data.drop(0)
data=data.drop(0)
data.describe()






# In[24]:

data[u'logerror'].hist()
for x in data.col_names[0:57]:
    if(x!=u'decktypeid' and x!=u'buildingclasstypeid' and x!=u'hashottuborspa' and x!=u'fireplaceflag' and x!= u'taxdelinquencyflag' and x!=u'poolcnt' ):
        data[x].hist()


# In[25]:

splits = data.split_frame(ratios=[0.70,.15], seed=1234)
train  = h2o.assign(splits[0], "train.hex") # 70%
valid  = h2o.assign(splits[1], "valid.hex") # 15%
test   = h2o.assign(splits[2], "test.hex")  # 15%
X = data.col_names[0:56]
#X.append(data.col_names[58])


# In[26]:


dl = H2ODeepLearningEstimator(distribution="laplace",variable_importances=True)
dl.train(x=X, y="logerror", training_frame=train,validation_frame=valid,nfolds=5,epochs=3,l1=.0001,l2=.0001,loss='Absolute')


# In[25]:

dl


# In[ ]:



