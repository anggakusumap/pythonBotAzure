import pymysql
db = pymysql.connect("localhost", "root", "", "db_ims")
cur = db.cursor()