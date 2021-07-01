import datetime
import mysql
import mysql.connector


def determine_age(bd):
    day, month, year = map(int, bd.split('.'))
    startDate = datetime.date(day, month, year)
    endDate = datetime.date.today()
    diff = endDate - startDate
    age = (diff.days + diff.seconds / 86400) / 365.2425
    return age


def sql():
        connection = mysql.connector.connect(host='game-cloud.ml',
                                             port='9996',
                                             database='emp_sql',
                                             user='EMP_SQL_FS20D',
                                             password='Login123!')

        sql_select_Query = "select * from emp"
        cursor = connection.cursor()
        cursor.execute(sql_select_Query)
        records = cursor.fetchall()
        # assert isinstance(records)
        return records