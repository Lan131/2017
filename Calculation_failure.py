
# coding: utf-8

# In[25]:

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

from sklearn.datasets import make_classification
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.preprocessing import Imputer





data1=pd.read_excel("322_work_testing_scorecard.xlsx","Raw")
X=data1.iloc[:,2:27] 
y=data1['Fail']




imp = Imputer(missing_values='NaN', strategy='mean', axis=0)
imp.fit_transform(X)




X=pd.DataFrame(X)
X.head()




y.head()






# Build a classification task using 3 informative features
X, y = make_classification(n_samples=1000,
                           n_features=10,
                           n_informative=3,
                           n_redundant=0,
                           n_repeated=0,
                           n_classes=2,
                           random_state=0,
                           shuffle=False)

# Build a forest and compute the feature importances
forest = ExtraTreesClassifier(n_estimators=250,
                              random_state=0)

forest.fit(X,y)
importances = forest.feature_importances_
std = np.std([tree.feature_importances_ for tree in forest.estimators_],
             axis=0)
indices = np.argsort(importances)[::-1]




print("Feature list:Actual Productivity,Actual OTA,Rank Resi Positive,Total techs Resi Positive,Rank Resi Trouble,Total techs Resi Trouble,Rank SB positive,Total Techs SB positive	Rank SB trouble	Total Techs SB trouble	Rank Productivity	Total Productivity	Rank OTA	Total OTA	Actual Resi Positive	Actual Resi Trouble	Actual SB Positive	Actual SB Trouble,QP Resi Positive,QP Resi Trouble,QP SB Positive,QP SB Trouble,QP Productivity,QP OTA,Fail")
# Print the feature ranking
print("Feature ranking:")

for f in range(X.shape[1]):
    print("%d. feature %d (%f)" % (f + 1, indices[f], importances[indices[f]]))

# Plot the feature importances of the forest
plt.figure()
plt.title("Feature importances in calculation failure.")
plt.bar(range(X.shape[1]), importances[indices],
       color="r", yerr=std[indices], align="center")
plt.xticks(range(X.shape[1]), indices)
plt.xlim([-1, X.shape[1]])
plt.show()






