#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np
df_play=pd.read_csv('PlayTennis.csv')
df_play.head()
import plotly.express as plt
figure=plt.parallel_categories(df_play[['Outlook','Play Tennis',]], height=400,width=500)
figure.show()
figure2=plt.parallel_categories(df_play[['Temperature','Play Tennis',]], height=400,width=500)
figure2.show()
figure3=plt.parallel_categories(df_play[['Humidity','Play Tennis',]], height=400,width=500)
figure3.show()
figure4=plt.parallel_categories(df_play[['Wind','Play Tennis',]], height=400,width=500)
figure4.show()
from sklearn.preprocessing import LabelEncoder
LE=LabelEncoder()
df_play['Outlook']=LE.fit_transform(df_play['Outlook'])
df_play['Temperature']=LE.fit_transform(df_play['Temperature'])
df_play['Humidity']=LE.fit_transform(df_play['Humidity'])
df_play['Wind']=LE.fit_transform(df_play['Wind'])
df_play.head(15)
X=df_play.drop('Play Tennis',axis=1)
y=df_play['Play Tennis']
from sklearn.model_selection import train_test_split
X_train,X_test,y_train,y_test=train_test_split(X,y,test_size=0.2,random_state=101)
from sklearn.naive_bayes import GaussianNB
model=GaussianNB()
model.fit(X_train,y_train)
predictions=model.predict(X_test)
predictions
from sklearn.metrics import accuracy_score
accuracy_score(y_test,predictions)


# In[ ]:




