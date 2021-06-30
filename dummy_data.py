import sqlite3




def create_daily_table(staff_name, date):

    db_name = f"daily-contrib_{staff_name}_{date}.db"

    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()

    sql = "CREATE TABLE daily_contributions (acc_no Number, acc_name text, deposit Number, installation Number, withdrawal Number)"
    cursor.execute(sql)

    conn.commit()
    conn.close()

create_daily_table()
