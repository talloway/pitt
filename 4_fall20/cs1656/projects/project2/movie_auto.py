import sqlite3 as lite
import csv
import re
import pandas as pd
import argparse
import collections
import json
import glob
import math
import os
import requests
import string
import sqlite3
import sys
import time
import xml


class Movie_auto(object):
    def __init__(self, db_name):
        #db_name: "cs1656-public.db"
        self.con = lite.connect(db_name)
        self.cur = self.con.cursor()

    #q0 is an example
    def q0(self):
        query = '''SELECT COUNT(*) FROM Actors'''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q1(self):
        self.cur.execute('DROP VIEW IF EXISTS actorscastmovies')
        self.cur.execute('''CREATE VIEW actorscastmovies AS
                            SELECT * FROM actors
                            NATURAL JOIN (cast NATURAL JOIN movies)''')

        self.cur.execute('DROP VIEW IF EXISTS eightiesroles')
        self.cur.execute('''CREATE VIEW eightiesroles AS
                            SELECT * FROM actorscastmovies
                            WHERE year >= 1980 AND year <= 1990''')

        self.cur.execute('DROP VIEW IF EXISTS y2kroles')
        self.cur.execute('''CREATE VIEW y2kroles AS
                            SELECT * FROM actorscastmovies
                            WHERE year >= 2000''')

        query = '''
            SELECT fname, lname FROM
            (SELECT aid FROM eightiesroles) NATURAL JOIN y2kroles
            GROUP BY fname, lname
            ORDER BY lname ASC, fname ASC
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows


    def q2(self):
        query = '''
            SELECT title, year
            FROM movies
            WHERE year =
                (SELECT year
                FROM movies
                WHERE title = 'Rogue One: A Star Wars Story')
            AND rank >
                (SELECT rank
                FROM movies
                WHERE title = 'Rogue One: A Star Wars Story')
            ORDER BY title
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q3(self):
        query = '''
            SELECT fname, lname, COUNT(DISTINCT title)
            FROM actorscastmovies
            WHERE title LIKE '%Star Wars%'
            GROUP BY lname, fname
            ORDER BY COUNT(DISTINCT title) DESC, lname, fname
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows


    def q4(self):
        query = '''
            SELECT *
            FROM
                (SELECT DISTINCT fname, lname
                FROM actorscastmovies
                EXCEPT
                SELECT DISTINCT fname, lname
                FROM actorscastmovies
                WHERE year >= 1980)
            GROUP BY lname, fname;
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q5(self):
        query = '''
            SELECT fname, lname, COUNT(DISTINCT mid) AS num_films_directed
            FROM directors NATURAL JOIN movie_director
			GROUP BY fname, lname
			ORDER BY COUNT(DISTINCT mid) DESC, lname, fname
			LIMIT 10
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q6(self):
        self.cur.execute('DROP VIEW IF EXISTS castmemberrankings')
        self.cur.execute('''CREATE VIEW castmemberrankings AS
            SELECT DISTINCT mid, title, COUNT(aid) AS cast_members FROM
            cast NATURAL JOIN movies
            GROUP BY mid''')

        query = '''
            SELECT title, cast_members
            FROM castmemberrankings
            WHERE cast_members >=
            (SELECT min(cast_members)
             FROM (SELECT cast_members FROM
                   castmemberrankings
                   ORDER BY cast_members
                   DESC LIMIT 10))
            ORDER BY cast_members DESC, title
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q7(self):
        self.cur.execute('DROP VIEW IF EXISTS actorcountbymovie')
        self.cur.execute('''CREATE VIEW actorcountbymovie AS
	       SELECT title, COUNT(gender) AS actors
	       FROM actorscastmovies
	       WHERE gender = 'Male'
	       GROUP BY title''')

        self.cur.execute('DROP VIEW IF EXISTS actresscountbymovie')
        self.cur.execute('''CREATE VIEW actresscountbymovie AS
	       SELECT title, COUNT(gender) AS actresses
	       FROM actorscastmovies
	       WHERE gender = 'Female'
	       GROUP BY title''')

        query = '''
            SELECT title, actresses, actors
	        FROM actresscountbymovie NATURAL JOIN actorcountbymovie
	        WHERE actresses > actors
	        GROUP BY title
            ORDER BY title'''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q8(self):
        query = '''
            SELECT fname, lname, COUNT(DISTINCT did) AS numdifferentdirectors
            FROM actorscastmovies NATURAL JOIN movie_director
            GROUP BY fname, lname
            HAVING numdifferentdirectors >= 7
            ORDER BY numdifferentdirectors DESC
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows


    def q9(self):
        self.cur.execute('DROP VIEW IF EXISTS d_actors')
        self.cur.execute('''CREATE VIEW d_actors AS
            SELECT fname, lname, MIN(year) AS debutyear
            FROM actorscastmovies
            WHERE fname LIKE 'D%'
            GROUP BY fname, lname''')

        query = '''
            SELECT fname, lname, COUNT(DISTINCT title) AS debutyearmovies
            FROM d_actors NATURAL JOIN actorscastmovies
            WHERE year = debutyear
            GROUP BY fname, lname
            ORDER BY debutyearmovies DESC, lname, fname
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q10(self):
        self.cur.execute('DROP VIEW IF EXISTS moviedirectortitle')
        self.cur.execute('''CREATE VIEW moviedirectortitle AS
            SELECT * FROM movies NATURAL JOIN
            (movie_director NATURAL JOIN directors)''')

        query = '''
            SELECT a.lname, a.title
            FROM actorscastmovies AS a, moviedirectortitle AS m
            WHERE m.lname = a.lname
            AND a.mid = m.mid
            AND a.fname != m.fname
            ORDER BY a.lname
        '''
        
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q11(self):
        self.cur.execute('DROP VIEW IF EXISTS baconone')
        self.cur.execute('''CREATE VIEW baconone AS
	       SELECT aid, fName, lName FROM
	          (SELECT DISTINCT mid
	           FROM actorscastmovies
	           WHERE fname = 'Kevin'
	           AND lname = 'Bacon')
	       NATURAL JOIN actorscastmovies
           WHERE fname != 'Kevin' OR lname != "Bacon"''')

        self.cur.execute('DROP VIEW IF EXISTS bacontwo;')
        self.cur.execute('''CREATE VIEW bacontwo AS
            SELECT DISTINCT aid, fName, lName FROM
                (SELECT DISTINCT mid FROM
                actorscastmovies NATURAL JOIN baconone)
            NATURAL JOIN actorscastmovies
            WHERE fName != 'Kevin' OR lName != 'Bacon'
            EXCEPT SELECT * FROM baconone''')

        query = '''
            SELECT fname, lname FROM bacontwo
            ORDER BY lname, fname
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

    def q12(self):
        query = '''
            SELECT fName, lName, COUNT(DISTINCT mid) AS num_movies, AVG(rank) AS popularity
            FROM actorscastmovies
            GROUP BY fName, lName
            ORDER BY popularity DESC, num_movies, lName, fName
            LIMIT 20
        '''
        self.cur.execute(query)
        all_rows = self.cur.fetchall()
        return all_rows

if __name__ == "__main__":
    task = Movie_auto("cs1656-public.db")
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
    rows = task.q8()
    print(rows)
    print()
    rows = task.q9()
    print(rows)
    print()
    rows = task.q10()
    print(rows)
    print()
    rows = task.q11()
    print(rows)
    print()
    rows = task.q12()
    print(rows)
    print()
