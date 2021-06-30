import sqlite3




def create_daily_table(acc_number, date):

    db_name = f"daily-contrib_{acc_number}_{date}.db"

    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()

    sql = "CREATE TABLE daily_contributions (acc_no Number, acc_name text, deposit Number, installation Number, withdrawal Number)"
    cursor.execute(sql)

    conn.commit()
    conn.close()

acc_number = '001223448'
date = '30-6-2021'

create_daily_table(acc_number, date)
