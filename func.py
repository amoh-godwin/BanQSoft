
import threading
import sqlite3

from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal

class Backend(QObject):

    def __init__(self):
        super().__init__()

    returnNames = pyqtSignal(list, list, arguments=['returnRes'])

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
        nums = []

        for item in db:
            obj = {}
            obj['num'] = item[0]
            obj['name'] = item[1]
            names.append(obj)

        self.returnRes(names, nums)


    def returnRes(self, names, nums):
        print(self.returnNames)
        self.returnNames.emit(names, nums)
