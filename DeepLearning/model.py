 -*- coding: utf-8 -*-
"""Model.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1Zlr14gy1j51SB4tkrLiYq_QmuuS3YqaA
"""

import numpy as np
import pandas as pd 
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
import tensorflow as tf

import matplotlib.pyplot as plt

data = pd.read_csv("data (1).csv")

for i in range(2,19):
    new_data = pd.read_csv(f"data ({i}).csv")
    data = data.append(new_data)

columns = ['Sol Rad (W/sq.m)','Min Air Temp (C)','Max Air Temp (C)','Min Rel Hum (%)','Max Rel Hum (%)','ETo (mm)']

data.columns

data_f = data

for i in ['Stn Name','CIMIS Region', 'Date', 'Jul']:
    del data_f[i]

columns = ['Sol Rad (W/sq.m)',  'Min Air Temp (C)', 'Max Air Temp (C)', 'Min Rel Hum (%)',
 'Max Rel Hum (%)', 'Avg Wind Speed (m/s)','Precip (mm)','Avg Vap Pres (kPa)','Avg Soil Temp (C)','Avg Air Temp (C)','Avg Rel Hum (%)','ETo (mm)']

data_f = data_f[columns]

data_f.isnull().sum()

data_3 = data_f.dropna()

data_3

"""# New Section"""

X = data_3.iloc[:,:11].values
y = data_3.iloc[:,11:12].values

from sklearn.preprocessing import MinMaxScaler
scaler = MinMaxScaler()
X = scaler.fit_transform(X)

X_train,X_test,y_train,y_test = train_test_split(X,y,test_size = 0.1)

import keras
from keras.models import Sequential
from keras.layers import Dense

model = Sequential([
    Dense(12, kernel_initializer='glorot_normal',activation='relu', input_shape=(11,)),
    Dense(12,  kernel_initializer='glorot_normal',activation='relu'),
    Dense(1,activation='linear'),
])

model.compile(loss='mean_squared_error', optimizer='adam')

hist = model.fit(X_train, y_train,
          batch_size=64, epochs=200,
          validation_data=(X_test, y_test))

keras_file = "model.h5"
keras.models.save_model(model,keras_file)

model = tf.keras.models.load_model('model.h5')
converter = tf.lite.TFLiteConverter.from_keras_model(model)

tflite_model = converter.convert()
open("converted_model.tflite", "wb").write(tflite_model)

"""Testing Stage"""

data = pd.read_csv("daily_test2.csv")



columns = ['Sol Rad (W/sq.m)','Min Air Temp (C)','Max Air Temp (C)','Min Rel Hum (%)','Max Rel Hum (%)','ETo (mm)']

data.columns

data_f = data

for i in ['Stn Id','Stn Name','CIMIS Region', 'Date', 'Jul']:
    del data_f[i]

columns = ['Sol Rad (W/sq.m)',  'Min Air Temp (C)', 'Max Air Temp (C)', 'Min Rel Hum (%)',
 'Max Rel Hum (%)', 'Avg Wind Speed (m/s)','Precip (mm)','Avg Vap Pres (kPa)','Avg Soil Temp (C)','Avg Air Temp (C)','Avg Rel Hum (%)','ETo (mm)']

data_f.columns

data_f.isnull().sum()

data_3 = data_f.dropna()

data_3= data_3[columns]



X = data_3.iloc[:,:11].values
y = data_3.iloc[:,11:12].values

from sklearn.preprocessing import MinMaxScaler
scaler = MinMaxScaler()
X = scaler.fit_transform(X)

scores = model.evaluate()


