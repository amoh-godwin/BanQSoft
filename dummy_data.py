import sqlite3




def create_daily_table(acc_number, date):

    db_name = f"daily-contrib_{acc_number}_{date}.db"

    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()

    sql = "CREATE TABLE daily_contributions (acc_no Number, acc_name text, deposit Number, installation Number, withdrawal Number)"
    cursor.execute(sql)

    conn.commit()
    conn.close()

def create_user():

    db_name = "clients.db"
    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()

    sql = "CREATE TABLE clients (no Number, name text, daily_contributions Number)"
    cursor.execute(sql)

    conn.commit()
    conn.close()


def add_user(usernames):
    db_name = "clients.db"
    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()

    sql = "INSERT INTO clients VALUES (?, ?, ?)"
    cursor.executemany(sql, usernames)

    conn.commit()
    conn.close()

acc_number = '0000001'
date = '30-6-2021'

# create_daily_table(acc_number, date)
names = ['amoh', 'baby', 'cylinder', 'dance moves', 'good dance moves']
no = 0
data = []
for x in names:
    no += 1
    data.append((no, x, no,))

add_user(data)
