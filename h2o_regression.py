import matplotlib.pyplot as plt
import numpy as np
import statsmodels.formula.api as smf
import pandas as pd


data=pd.read_csv("random_data.csv")
data.head()
mod = smf.OLS(data["y"], data["x"])
res = mod.fit()
print res.summary()


import h2o
from h2o.estimators.glm import H2OGeneralizedLinearEstimator
h2o.init()
h2o_df = h2o.import_file("random_data.csv")
h2o_df.summary()
m = H2OGeneralizedLinearEstimator(model_id="GLM_1",nfolds=0)
x = h2o_df.col_names[0]
y = h2o_df.col_names[1]
m.train(x,y,h2o_df)
m

