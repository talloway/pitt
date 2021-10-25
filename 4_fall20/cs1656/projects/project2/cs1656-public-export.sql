--
-- File generated with SQLiteStudio v3.2.1 on Mon Sep 14 22:53:45 2020
--
-- Text encoding used: UTF-8
--
-- PRAGMA foreign_keys = off;
-- BEGIN TRANSACTION;

-- Table: Actors
CREATE TABLE Actors (aid INT, fname TEXT, lname TEXT, gender CHAR(6), PRIMARY KEY(aid));
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1001, 'Harrison', 'Ford', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1002, 'Daisy', 'Ridley', 'Female');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1003, 'Barack', 'Obama', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1004, 'Donald', 'Trump', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1005, 'Michael', 'J. Fox', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1006, 'Felicity', 'Jones', 'Female');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1007, 'Shia', 'LaBeouf', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1008, 'Olivia', 'Newton-John', 'Female');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1009, 'John', 'Travolta', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1010, 'Stockard', 'Channing', 'Female');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1011, 'Kevin', 'Bacon', 'Male');
INSERT INTO Actors (aid, fname, lname, gender) VALUES (1012, 'Kevin', 'Abrams', 'Male');

-- Table: Cast
CREATE TABLE Cast(aid INT, mid INT, role TEXT);
INSERT INTO "Cast" (aid, mid, role) VALUES (1001, 101, 'Han Solo');
INSERT INTO "Cast" (aid, mid, role) VALUES (1001, 125, 'Homeless Man');
INSERT INTO "Cast" (aid, mid, role) VALUES (1002, 101, 'Rey');
INSERT INTO "Cast" (aid, mid, role) VALUES (1003, 107, 'President Obama');
INSERT INTO "Cast" (aid, mid, role) VALUES (1003, 108, 'President Obama');
INSERT INTO "Cast" (aid, mid, role) VALUES (1005, 105, 'Marty McFly');
INSERT INTO "Cast" (aid, mid, role) VALUES (1005, 106, 'Marty McFly');
INSERT INTO "Cast" (aid, mid, role) VALUES (1006, 107, 'Jyn Erso');
INSERT INTO "Cast" (aid, mid, role) VALUES (1007, 108, 'Jake');
INSERT INTO "Cast" (aid, mid, role) VALUES (1008, 109, 'Sandy');
INSERT INTO "Cast" (aid, mid, role) VALUES (1009, 109, 'Danny');
INSERT INTO "Cast" (aid, mid, role) VALUES (1010, 109, 'Rizzo');
INSERT INTO "Cast" (aid, mid, role) VALUES (1012, 101, 'Token');
INSERT INTO "Cast" (aid, mid, role) VALUES (1011, 110, 'Actor');
INSERT INTO "Cast" (aid, mid, role) VALUES (1011, 101, 'Actor');
INSERT INTO "Cast" (aid, mid, role) VALUES (1002, 102, 'Rey2');
INSERT INTO "Cast" (aid, mid, role) VALUES (1003, 102, 'President Obama');

-- Table: Directors
CREATE TABLE Directors (did INT, fname TEXT, lname TEXT, PRIMARY KEY(did));
INSERT INTO Directors (did, fname, lname) VALUES (5000, 'J.J.', 'Abrams');
INSERT INTO Directors (did, fname, lname) VALUES (5001, 'Steven', 'Spielberg');
INSERT INTO Directors (did, fname, lname) VALUES (5002, 'Quentin', 'Tarantino');
INSERT INTO Directors (did, fname, lname) VALUES (5012, 'Randal', 'Kleiser');
INSERT INTO Directors (did, fname, lname) VALUES (5013, 'David', 'Lynch');
INSERT INTO Directors (did, fname, lname) VALUES (5014, 'Martin', 'Scorsese');
INSERT INTO Directors (did, fname, lname) VALUES (5015, 'Steven', 'Soderbergh');
INSERT INTO Directors (did, fname, lname) VALUES (5016, 'Terrence', 'Malick');
INSERT INTO Directors (did, fname, lname) VALUES (5017, 'Abbas', 'Kiarostami');
INSERT INTO Directors (did, fname, lname) VALUES (5018, 'Errol', 'Morris');
INSERT INTO Directors (did, fname, lname) VALUES (5019, 'Hayao', 'Miyazaki');
INSERT INTO Directors (did, fname, lname) VALUES (5020, 'David', 'Cronenberg');

-- Table: Movie_Director
CREATE TABLE Movie_Director(did INT, mid INT);
INSERT INTO Movie_Director (did, mid) VALUES (5000, 101);
INSERT INTO Movie_Director (did, mid) VALUES (5001, 102);
INSERT INTO Movie_Director (did, mid) VALUES (5002, 103);
INSERT INTO Movie_Director (did, mid) VALUES (5000, 104);
INSERT INTO Movie_Director (did, mid) VALUES (5012, 109);
INSERT INTO Movie_Director (did, mid) VALUES (5013, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5014, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5015, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5016, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5017, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5018, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5019, 110);
INSERT INTO Movie_Director (did, mid) VALUES (5020, 110);

-- Table: Movies
CREATE TABLE Movies (mid INT, title TEXT, year INT, rank REAL, PRIMARY KEY(mid));
INSERT INTO Movies (mid, title, year, rank) VALUES (101, 'Star Wars VII: The Force Awakens', 2015, 8.2);
INSERT INTO Movies (mid, title, year, rank) VALUES (102, 'Rogue One: A Star Wars Story', 2016, 8.0);
INSERT INTO Movies (mid, title, year, rank) VALUES (103, 'Breakfast at Tiffanys', 1961, 7.8);
INSERT INTO Movies (mid, title, year, rank) VALUES (104, 'Breakfast at Kaufmanns', 1950, 2.2);
INSERT INTO Movies (mid, title, year, rank) VALUES (105, 'Back to the Future', 1985, 8.5);
INSERT INTO Movies (mid, title, year, rank) VALUES (106, 'Back to the Future 4', 2020, 1.0);
INSERT INTO Movies (mid, title, year, rank) VALUES (107, 'Rogue One: A Star Wars Story', 2016, 6.9);
INSERT INTO Movies (mid, title, year, rank) VALUES (108, 'American Honey', 2016, 7.0);
INSERT INTO Movies (mid, title, year, rank) VALUES (109, 'Grease', 1978, 7.2);
INSERT INTO Movies (mid, title, year, rank) VALUES (110, 'Director''s eleven', 2020, 7.0);

-- COMMIT TRANSACTION;
-- PRAGMA foreign_keys = on;
