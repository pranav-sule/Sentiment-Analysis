
#Importing Essentials
import pandas as pd
from sklearn import metrics
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.svm import LinearSVC
import pickle
from sklearn import *
# from sklearn.linear_model import LogisticRegression

path = 'data.csv'
data = pd.read_csv(path,header=None,skiprows=1,names=['Review','Sentiment'])
data=data.dropna()
print(data.head(10))
X = data.Review
y = data.Sentiment


#Using CountVectorizer to convert text into tokens/features\
#accuracy

X_train, X_test, y_train, y_test = train_test_split(X,y,random_state=1, test_size= 0.2)
#Using training data to transform text into counts of features for each message
trainingVector = CountVectorizer(stop_words='english', ngram_range = (1,2), max_df = .80, min_df = 5)
trainingVector.fit(X_train)
X_dtm = trainingVector.transform(X_train)
SVM = LinearSVC()
SVM.fit(X_dtm, y_train)

test_dtm = trainingVector.transform(X_test)
y_pred = SVM.predict(test_dtm)

print('\nSupport Vector Machine')
print('Accuracy Score: ',metrics.accuracy_score(y_test,y_pred)*100,'%',sep='')
print('Confusion Matrix: ',metrics.confusion_matrix(y_test,y_pred), sep = '\n')



#Custom Input with whole dataset
trainingVector = CountVectorizer(stop_words='english', ngram_range = (1,2), max_df = .80, min_df = 5)
trainingVector.fit(X)
X_dtm = trainingVector.transform(X)
SVM = LinearSVC()
SVM.fit(X_dtm, y)
pickle.dump(SVM, open('model.pkl','wb'))
# model = pickle.load(open('model.pkl','rb'))
# print(model.predict([["he is a great teacher"]]))
#
# print('\nTest a custom review message')
# print('Enter review to be analysed: ', end=" ")
#
# print()




# #Display Output
# print('The review is predicted',tags[y_pred[0]])
