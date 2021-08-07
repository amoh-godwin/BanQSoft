
import threading
import sqlite3

from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal

class Backend(QObject):

    def __init__(self):
        super().__init__()

    returnNames = pyqtSignal(list, list, arguments=['returnRes'])

    @pyqtSlot()
    def get_names(self):
        g_thread = threading.Thread(target=self._get_names)
        g_thread.daemon = True
        g_thread.start()

    def _get_names(self):

        conn = sqlite3.connect('clients.db')
        cursor = conn.cursor()

        sql = "SELECT no, name FROM clients"
        cursor.execute(sql)
        db = cursor.fetchall()

        conn.commit()
        conn.close()

        names = []
        nums = []

        for item in db:
            nums.append(item[0])
            names.append(item[1])

        self.returnRes(names, nums)


    def returnRes(self, names, nums):
        print(self.returnNames)
        self.returnNames.emit(names, nums)
