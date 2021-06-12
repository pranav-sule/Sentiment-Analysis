import numpy as np
from flask import Flask, request, jsonify, render_template
import random
from flask import Response
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure

# import pickle
# import pandas as pd
# from sklearn.feature_extraction.text import CountVectorizer
import pandas as pd
from sklearn import metrics
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.svm import LinearSVC
import mysql.connector
import io
import os
import base64
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
import matplotlib.pyplot as plt
import sys
# sys.path.append('D:/Trial_Final/done')
# # import config
# from config import MEDIA_FOLDER

app = Flask(__name__)
# path = 'data.csv'
# data = pd.read_csv(path,header=None,skiprows=1,names=['Review','Sentiment'])
# data=data.dropna()
# X = data.Review
# model = pickle.load(open('model.pkl', 'rb'))

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

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/login')
def abcd():
    return render_template('index.html')

# @app.route('/uploads/<path:filename>')
# def download_file(filename):
#     return send_from_directory(MEDIA_FOLDER, filename, as_attachment=True)


@app.route('/result',methods=['post','get'])
def result():

    mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="register"
    )

    mycursor=mydb.cursor()
    a=mydb.cursor()
    teacherdb=mydb.cursor()
    name=request.form['email']
    val=(name,)
    sql="select * from comments where id= %s "
    mycursor.execute(sql,val)
    r=mycursor.fetchall()
    sql="select * from comments"
    a.execute(sql)
    admin_data=a.fetchall()


    count=mycursor.rowcount
    if request.method=="POST" and count==0:
        # name=request.form["email"]
        password=request.form['password']
        val=(name,password)
        sql="select * from register where email= %s and password=%s "
        mycursor.execute(sql,val)

        r=mycursor.fetchall()
        # return render_template("student",r=r)

        count=mycursor.rowcount
        if count==1 :
            if name[:2]=="EU":
            # return redirect(url_for('index1.html'))
                return render_template("index1.html",name=name)
            elif name[0]=="A":
                return render_template("admin.html",admin_data=admin_data)
            elif name[0]=="T":
                sql="select count(sentiment) from comments where teacher=%s and sentiment=%s"
                val=(name,1)
                teacherdb.execute(sql,val)
                dbteacher1=teacherdb.fetchall()
                sql="select count(sentiment) from comments where teacher=%s and sentiment=%s"
                val=(name,0)
                teacherdb.execute(sql,val)
                dbteacher2=teacherdb.fetchall()
                global bc1,bc2
                bc1=dbteacher1[0][0]
                bc2=dbteacher2[0][0]
                return render_template("teacher.html",bc1=bc1,bc2=bc2)

        else:
            # return redirect(url_for('index.html'))
            return render_template("index.html",a="Try Again")
    else:
        return render_template("predict.html",r=r)
    mydb.commit()
    mycursor.close()

# bar graph
@app.route('/plot.png',endpoint='func1')
def plot_png():
    fig = func1()
    output = io.BytesIO()
    FigureCanvas(fig).print_png(output)
    return Response(output.getvalue(), mimetype='image/png')
def func1():
    fig = plt.figure()

    fig.patch.set_facecolor('#c5cbe1')
    ax = fig.add_axes([0.05,0.05,0.9,0.9])

    langs = ["Positive","Negative"]
    students = [bc1,bc2]
    ax.bar(langs,students,color=["#006400","#800000"])
    ax.set_facecolor('xkcd:beige')
    plt.title("Number of Reviews based on sentiment")
    return fig

# pie chart
@app.route('/katapa',endpoint='func2')
def plot_png():
    fig = func2()
    output = io.BytesIO()
    FigureCanvas(fig).print_png(output)
    return Response(output.getvalue(), mimetype='image/png')
def func2():
    fig = plt.figure()
    fig.patch.set_facecolor('#c5cbe1')
    ax = fig.add_axes([0,0,1,1])
    ax.axis('equal')
    langs = ["Positive","Negative"]
    students = [bc1,bc2]
    ax.pie(students, labels = langs,autopct='%1.2f%%',colors=["#006400","#800000"],explode=[0,0.1],shadow=True,startangle = 45)
    return fig


@app.route('/predict',methods=['post'])
def predict():
    '''
    # For rendering results on HTML GUI
    # '''
    #Custom Input with whole dataset
    trainingVector = CountVectorizer( ngram_range = (1,2), max_df = .80, min_df = 5)
    trainingVector.fit(X)
    X_dtm = trainingVector.transform(X)
    SVM = LinearSVC()
    SVM.fit(X_dtm, y)
    test = []

    print('\nTest a custom review message')
    print('Enter review to be analysed: ', end=" ")
    # return render_template("student.html",r=request.form['ID'])
    id=request.form["ID"]
    test.append(request.form['anita'])
    test.append(request.form['jessica'])
    test.append(request.form['ahmer'])
    test.append(request.form['vivek'])
    test.append(request.form['jacob'])
    test.append(request.form['joyce'])
    test.append(request.form['shraddha'])
    test.append(request.form['linda'])
    # abcd=request.form['anita']
    comments=test[:]
    teachers=["T001","T002","T003","T004","T005","T006","T007","T008"]
    teachers1=["Anita","Jessica","Ahmer","Vivek","Jacob","Joyce","Shraddha","Linda"]
    test_dtm = trainingVector.transform(test)
    y_pred = SVM.predict(test_dtm)
    mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="register"
    )
    mycursor=mydb.cursor()
    for i in range(8):
        val=(id,teachers[i],teachers1[i],str(y_pred[i]),comments[i])
        sql="INSERT INTO comments(id, teacher,name,sentiment, comment) VALUES (%s,%s,%s,%s,%s)"
        mycursor.execute(sql,val)
    mydb.commit()
    mycursor.close()


    # print("Label for the given input: ",y_pred[0])

    # tags = ['Negative','Positive']
    #Display Output

    # x=f'The review predicted is {tags[y_pred[0]]}'
    return render_template("predict1.html")
    # return render_template("predict.html")


    #
    # trainingVector = CountVectorizer(stop_words='english', ngram_range = (1,2), max_df = .80, min_df = 5)
    # trainingVector.fit(X)
    # test = []
    #
    #
    # test.append(request.form['experience'])
    #
    # test_dtm = trainingVector.transform(test)
    # y_pred = model.predict(test_dtm)

    # print("Label for the given input: ",y_pred[0])

    # tags = ['Negative','Positive']
    # #Display Output
    # print('The review is predicted',tags[y_pred[0]])

    # int_features = request.form["experience"]
    # final_features = [[int_features]]
    # prediction = model.predict(final_features)
    # #
    # # output = round(prediction[0], 2)
    #
    # # test.append(input())
    # # test_dtm = trainingVector.transform(test)
    # # y_pred = SVM.predict(test_dtm)
    # tags = ['Negative','Positive']
    # return render_template('index.html', prediction_text='Employee Salary should be $ {}'.format(tags[prediction[0]]))

# @app.route('/predict_api',methods=['POST'])
# def predict_api():
#     '''
#     For direct API calls trought request
#     '''
#     data = request.get_json(force=True)
#     prediction = model.predict([np.array(list(data.values()))])
#
#     output = prediction[0]
#     return jsonify(output)

if __name__ == "__main__":
    app.run(debug=True)
