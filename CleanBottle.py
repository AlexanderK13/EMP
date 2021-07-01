from bottle import Bottle, run, get, post, request # or route
from bottle import template
#import csv
import datetime
import mysql.connector

app = Bottle()

@app.route('/table')
def showTable():
    return template("table")

@app.route('/', method="POST")
def showTable():
    firstName = request.forms.get("NewFirstName")
    lastName = request.forms.get("NewLastName")
    id = request.forms.get("NewID")
    birthday = request.forms.get("NewBirthday")
    address = request.forms.get("NewAddress")
    division = request.forms.get("NewDivision")
    telephone = request.forms.get("NewTelephone")
    relation = request.forms.get("NewRelation")
    gender = request.forms.get("NewGender")
    license = request.forms.get("NewLicense")
    religion = request.forms.get("NewReligion")
    insurance = request.forms.get("NewInsurance")
    marital = request.forms.get("NewMarital")
    eMail = request.forms.get("NewEMail")
    superior = request.forms.get("NewSuperior")
    joined = request.forms.get("NewJoinDate")
    employee = [firstName,lastName,id,birthday,address,division,telephone,relation,gender,license,religion,insurance,marital,eMail,superior,joined]
    with open("employeeFile.csv", 'a+', newline='') as employeeFile:
        employeeWriter = csv.writer(employeeFile, delimiter=",", quotechar="'", quoting=csv.QUOTE_MINIMAL)

        employeeWriter.writerow(employee)
    return template("table")

run(app, host='localhost', port=8080, reloader=False)