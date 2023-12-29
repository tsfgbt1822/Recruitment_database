import mysql.connector as mysql
from prettytable import PrettyTable

db = mysql.connect(host = "localhost", user = "USER",passwd = "PASSWORD",

database = "recruitment")
cursor = db.cursor()

choice=-1
while choice !=0:
print("Welcome to the recruitment database")
print("0. exit program")
print("1. Add rec letter")
print("2. Add score")
print("3. View a PNM")
print("4. View all PNMs")
print("5. PNM rankings")
print("6. Match PNM to chapter members")
print("7. Create Schedule")

choice= int(input("Enter your choice\n"))
match choice:
case 0:
break

case 1:
aName=input("Enter alumna name\n")
pId=int(input("enter pnm id number\n"))
sName=input("Enter sorority name\n")
letter=input("enter rec letter\n")
cursor.execute("INSERT INTO rec_letter VALUES (%s, %s, %s, %s)", (aName, pId, sName, letter,))
db.commit()
print("letter inserted")

case 2:
R_name=input("enter recruiter name\n")
P_name=input("enter pnm name\n")
score=int(input("Enter score value\n"))
cursor.execute("INSERT INTO score VALUES (%s, %s, %s)", (R_name,
P_name, score,))
db.commit()
print("score inserted")

case 3:
id=int(input("Enter PNM ID number\n"))
cursor.execute("SELECT * FROM pnm WHERE ID=%s", (id,))
result=cursor.fetchall()
table=PrettyTable()
table.field_names=["Name", "DOB", "ID", "GPA", "Hometown", "Major",
"Activity", "Preference", "Council"]
for row in result:
table.add_row(row)
print(table)

case 4:
cursor.execute("SELECT * FROM pnm")
result = cursor.fetchall()
table=PrettyTable()
table.field_names=["Name", "DOB", "ID", "GPA", "Hometown", "Major",
"Activity", "Preference", "Council"]
for row in result:
table.add_row(row)
print(table)

case 5:
soror=input("enter sorority name\n")
cursor.execute("SELECT p.Name, s.Score FROM score AS s, chapter_member
AS c, pnm AS p WHERE c.Name=s.Scorer AND c.S_name=%s AND s.Receiver=p.ID ORDER BY
s.Score DESC", (soror,))
result = cursor.fetchall()
table=PrettyTable()
table.field_names=["Name", "Score"]
for row in result:
table.add_row(row)
print(table)

case 6:
pnm=int(input("enter pnm id\n"))
soror=input("enter sorority name")
table=PrettyTable()
table.field_names=["Name", "Connection"]
cursor.execute("SELECT c.Name, c.Hometown FROM chapter_member AS c, pnm
AS p WHERE p.Hometown=c.Hometown AND c.S_name=%s AND p.ID=%s", (soror, pnm,))
result = cursor.fetchall()
for row in result:
table.add_row(row)
cursor.execute("SELECT c.Name, c.Activity FROM chapter_member AS c, pnm
AS p WHERE p.Activity=c.Activity AND c.S_name=%s AND p.ID=%s", (soror, pnm,))
result = cursor.fetchall()
for row in result:
table.add_row(row)
print(table)

case 7:
print("create schedule")
