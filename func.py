
import threading
import sqlite3

from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal


class Backend(QObject):

    def __init__(self):
        super().__init__()


    returnNames = pyqtSignal(list, arguments=['returnRes'])


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


    @pyqtSlot(str, str, str, str, str)
    def save_and_exit(self, *args):
        se_thread = threading.Thread(target=self._save_and_exit, args=[*args])
        se_thread.daemon = True
        se_thread.start()


    def _save_and_exit(self, num, name, deposit, installments, withdrawal):
        print(num, name)


    @pyqtSlot(str, str, str, str, str)
    def save_and_add(self, *args):
        se_thread = threading.Thread(target=self._save_and_add, args=[*args])
        se_thread.daemon = True
        se_thread.start()


    def _save_and_add(self, num, name, deposit, installments, withdrawal):
        print(num, name)

