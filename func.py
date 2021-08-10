
import threading
import sqlite3

from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal


class Backend(QObject):

    def __init__(self):
        super().__init__()

    returnNames = pyqtSignal(list, arguments=['returnRes'])

    def num_exists(self, num):
        conn = sqlite3.connect('clients.db')
        cursor = conn.cursor()

        sql = f"SELECT no FROM clients WHERE no = {num}"
        cursor.execute(sql)
        db = cursor.fetchall()

        conn.commit()
        conn.close()

        if db:
            return True

    def add_record(self, name, num):
        conn = sqlite3.connect('clients.db')
        cursor = conn.cursor()

        sql = "INSERT INTO clients VALUES (?, ?, ?)"
        cursor.execute(sql, (num, name, 0))

        conn.commit()
        conn.close()

    @pyqtSlot(str)
    def get_names(self, patt):
        g_thread = threading.Thread(target=self._get_names, args=[patt])
        g_thread.daemon = True
        g_thread.start()

    def _get_names(self, patt):

        conn = sqlite3.connect('clients.db')
        cursor = conn.cursor()

        cond = f"'%{patt}%'"

        sql = "SELECT no, name FROM clients WHERE name LIKE " + cond
        cursor.execute(sql)
        db = cursor.fetchall()

        conn.commit()
        conn.close()

        names = []

        for item in db:
            obj = {}
            obj['num'] = item[0]
            obj['name'] = item[1]
            names.append(obj)

        self.returnRes(names)

    def returnRes(self, names):
        self.returnNames.emit(names)

    def save_contrib(self, officer, date, num, name, deposit, installments, withdrawal):

        db_name = f"daily-contrib_{date}.db"
        conn = sqlite3.connect(db_name)
        cursor = conn.cursor()

        sql = "INSERT INTO daily_contributions (acc_no, acc_name, deposit, installation, withdrawal, officer) VALUES (?, ?, ?, ?, ?, ?)"
        cursor.execute(sql, (num, name, deposit, installments, withdrawal, officer))

        conn.commit()
        conn.close()

    @pyqtSlot(str, str, int, str, float, float, float)
    def save_and_exit(self, *args):
        se_thread = threading.Thread(target=self._save_and_exit, args=[*args])
        se_thread.daemon = True
        se_thread.start()

    def _save_and_exit(self, officer, date, num, name, deposit, installments, withdrawal):
        print(num, name)
        if not self.num_exists(num):
            self.add_record(name, num)

        self.save_contrib(officer, date, num, name, deposit, installments, withdrawal)

    @pyqtSlot(str, str, str, str, str)
    def save_and_add(self, *args):
        se_thread = threading.Thread(target=self._save_and_add, args=[*args])
        se_thread.daemon = True
        se_thread.start()

    def _save_and_add(self, num, name, deposit, installments, withdrawal):
        print(num, name)
