import sqlite3 as lite
import csv
import re
import pandas as pd


class Task(object):
    def __init__(self, db_name):
        self.con = lite.connect(db_name)
        self.cur = self.con.cursor()

    #q0 is an example
    def q0(self):
        query = '''
            SELECT COUNT(*) FROM students
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q1(self):
        query = '''
            SELECT firstName, lastName
            FROM students
            WHERE yearStarted = 2019
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows


    def q2(self):
        query = '''
            SELECT firstName, lastName
            FROM majors NATURAL JOIN students
            WHERE major = 'COE' OR major = 'CS'
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q3(self):
        query = '''
            SELECT COUNT(major)
            FROM majors
            WHERE major = 'ASTRO'
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows


    def q4(self):
        query = '''
            SELECT firstName, lastName, yearStarted, SUM(credits)
            FROM grades NATURAL JOIN students
            WHERE grade > 0
            GROUP BY sid
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q5(self):
        query = '''
            SELECT professor, COUNT(professor)
            FROM courses
            GROUP BY professor
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q6(self):
        query = '''
            SELECT cid, grade, COUNT(grade)
            FROM courses NATURAL JOIN grades
            GROUP BY cid, grade
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q7(self):
        query = '''
            SELECT cid, grade, COUNT(grade)
            FROM courses NATURAL JOIN grades
            WHERE grade = 4
            GROUP BY cid
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

if __name__ == "__main__":
    task = Task("students.db")
    rows = task.q0()
    print(rows)
    print()
    rows = task.q1()
    print(rows)
    print()
    rows = task.q2()
    print(rows)
    print()
    rows = task.q3()
    print(rows)
    print()
    rows = task.q4()
    print(rows)
    print()
    rows = task.q5()
    print(rows)
    print()
    rows = task.q6()
    print(rows)
    print()
    rows = task.q7()
    print(rows)
    print()
