


##revert to h2o	3.10.0.9
import h2o
from h2o.estimators.deeplearning import H2ODeepLearningEstimator
h2o.init()




data = h2o.import_file("merged_data.csv")





data=data[data['transactiondate']]




data=data.drop(0)
data=data.drop(0)
data.describe()








data[u'logerror'].hist()
for x in data.col_names[0:57]:
    if(x!=u'decktypeid' and x!=u'buildingclasstypeid' and x!=u'hashottuborspa' and x!=u'fireplaceflag' and x!= u'taxdelinquencyflag' and x!=u'poolcnt' ):
        data[x].hist()




splits = data.split_frame(ratios=[0.70,.15], seed=1234)
train  = h2o.assign(splits[0], "train.hex") # 70%
valid  = h2o.assign(splits[1], "valid.hex") # 15%
test   = h2o.assign(splits[2], "test.hex")  # 15%
X = data.col_names[0:56]
#X.append(data.col_names[58])





dl = H2ODeepLearningEstimator(distribution="laplace",variable_importances=True)
dl.train(x=X, y="logerror", training_frame=train,validation_frame=valid,nfolds=5,epochs=3,l1=.0001,l2=.0001,loss='Absolute')




dl





