import csv
import datetime
from bottle import Bottle, run
from bottle import template

def determine_age(row):
		year, month, day = map(int, row[3].split('-'))
		startDate = datetime.date(year,month,day)
		endDate = datetime.date.today()
		diff = endDate-startDate
		age = (diff.days+diff.seconds/86400)/365.2425
		return age


def sub_menu_one():
	choice = int(input("""1. add datasets from file (merge)
2. add new single dataset (via console)
3. add new column
4. back
"""))
	if choice == 1:
		merge_dataset()
	elif choice == 2:
		add_employee()
	elif choice == 3:
		add_column()


def merge_dataset():
	print("TODO")


def add_employee():
	firstName=input("Enter the new Employee's First Name")
	lastName=input("Enter the new Employee's Last Name")
	id=input("Enter the new Employee's ID")
	birthdayin=input("Enter the new Employee's Birthday, YYYY-MM-DD Format")
	year, month, day = map(int, birthdayin.split('-'))
	birthday = datetime.date(year, month, day)
	address=input("Enter the new Employee's Address")
	division=input("Enter the new Employee's Division")
	telephone=input("Enter the new Employee's Telephone Number")
	relation=input("Enter the nature of the new Employee's relation with us")
	gender=input("Enter the new Employee's Gender")
	licence=input("Enter the new Employee's Driver's Licence")
	religion=input("Enter the new Employee's religion")
	insurance=input("Enter the new Employee's Health insurance company")
	marital=input("Enter the new Employee's Marital Status")
	eMail=input("Enter the new Employee's E-Mail address")
	superior=input("Enter the first name of the new Employee's Superior")
	joinedin=input("Enter the date the new Employee joined, YYYY-MM-DD Format")
	year, month, day = map(int, birthdayin.split('-'))
	joined = datetime.date(year, month, day)
	employee = [firstName,lastName,id,birthday,address,division,telephone,relation,gender,licence,religion,insurance,marital,eMail,superior,joined]
	
	with open("employeeFile.csv", mode="a") as employeeFile:
		employeeWriter = csv.writer(employeeFile, delimiter=",", quotechar="'", quoting=csv.QUOTE_MINIMAL)

		employeeWriter.writerow(employee)
	print(f"The Employee {firstName} {lastName} was added succesfully.")


def add_column():
	print("TODO")


def sub_nenu_two():
	choice = int(input("""1. show all datasets
2. show single dataset
3. filter...
4. show empty fields
5. back
"""))
	if choice == 1:
		read_employees()
	elif choice == 2:
		read_one_employee()
	elif choice == 3:
		filter_employee()
	elif choice == 4:
		show_null_fields()


def read_employees():
	with open("employeeFile.csv") as csvfile:
		csv_reader = csv.reader(csvfile, delimiter=",")
		for row in csv_reader:
			try:
				#print(row)
				age = determine_age(row)
			except IndexError:
				break
			print(f"First Name: {row[0]},Last Name: {row[1]},ID: {row[2]},Age {age},Address: {row[4]},division: {row[5]},telephone: {row[6]},relation: {row[7]},gender: {row[8]},licence: {row[9]},religion: {row[10]},insurance: {row[11]},marital status: {row[12]},E-Mail: {row[13]},Superior: {row[14]},Join date: {row[15]}")


def read_one_employee():
	print("TODO")


def filter_employee():
	#Currently only filters for oldest by Age, other filters are still TODO
	employee = ["firstName","lastName",0,0,"address","div",32514212,"relation","gender","licence","religion","insurance","marital","eMail","superior",0]
	with open("employeeFile.csv") as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=",")
		for row in csv_reader:
			try:
				age = determine_age()
			except IndexError:
				break
			if age > employee[3]:
				employee = [row[0],row[1],row[2],age,row[4],row[5],row[6],row[7],row[8],row[9],row[10],row[11],row[12],row[13],row[14],row[15]]
	print(f"{employee[0]} {employee[1]} is the oldest employee at the age of {employee[3]}")


def show_null_fields():
	print("TODO")


def sub_menu_three():
	choice = int(input("""1. update all
2. update single dataset
3. back
"""))
	if choice == 1:
		update_all()
	elif choice == 2:
		update_employee()


def update_all():
	print("TODO")


def update_employee():
	print("TODO")


def sub_nenu_four():
	choice = int(input("""1. delete ALL DATA
2. delete single row
3. delete single column
4. back
"""))
	if choice == 1:
		delete_all()
	elif choice == 2:
		deleteEmployee()
	elif choice == 3:
		deleteColumn()

def delete_all():
	deletion = input("""Are you sure you want to delete everything?
	type DELETE to confirm""")
	if deletion == "DELETE":
		f = open("employeeFile.csv", "w")
		f.write(" ")
		f.close()
		print("All Data has been deleted.")
	else:
		print("Deletion aborted.")


def deleteEmployee():
	print("TODO")

def deleteColumn():
	print("TODO")


try:
    f = open("employeeFile.csv")
    print("Database exists, staring")
except IOError:
    f = open("employeeFile.csv", "x")
finally:
    f.close()


app = Bottle()

@app.route('/table')
def showTable():
    return template("table")

run(app, host='localhost', port=8080)


#choice = 0
#
#while choice != 6:
#	print("""Please Choose one of the following options:
#1. Create
#2. Read
#3. Update
#4. Delete
#5. Save/Export
#6. End Program""")
#	choice = int(input("""Please enter a number between 1 and 6
#"""))
#	
#	if choice == 1:
#		sub_menu_one()
#	elif choice == 2:
#		sub_nenu_two()
#	elif choice == 3:
#		sub_menu_three()
#	elif choice == 4:
#		sub_nenu_four()
#	elif choice == 5:
#		print("All Data has been saved to the file employeeFile.csv in the application folder.")
#	elif choice == 6:
#		print("Closing Program")
#	else: print("Invalid choice")