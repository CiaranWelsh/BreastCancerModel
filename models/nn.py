from simple_akt_model import *
import os, glob
import tensorflow as tf



data_file = os.path.join(DATA_DIRECTORY, 'parameter_estimation_data.csv')
data = pandas.read_csv(data_file)

print(data)

























