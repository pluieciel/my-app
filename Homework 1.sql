-- NOTES:
-- 1) all input files in TSV format need to be located in a directory that is accessible by Postgres (e.g. /tmp)
-- 2) the first header line (with the column names) needs to be removed for the COPY commands to work properly

-- PROBLEM 1 (a)
-- for azure, no superuser permission for COPY; need to use psql from cloud shell to modify tsv and to copy
-- psql '--host=sql-test-01.postgres.database.azure.com' '--username=pluieciel' '--dbname=IMDB' -c "\copy Persons FROM '/tmp/name.basics.tsv' with (null '\N', encoding 'UTF8');"

-- load data
/*
DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons (
	nid char(10),
	primaryName varchar(128),
	birthYear int,
	deathYear int,
	primaryProfession varchar(128),
	knownForTitles varchar(128));
COPY Persons FROM '/tmp/name.basics.tsv' NULL '\N' ENCODING 'UTF8';
SELECT * FROM Persons LIMIT 100;

DROP TABLE IF EXISTS Titles;
CREATE TABLE Titles (
	tid char(10),
	ttype varchar(12),
	primaryTitle varchar(1024),
	originalTitle varchar(1024),
	isAdult int,
	startYear int,
	endYear int,
	runtimeMinutes int,
	genres varchar(256));
COPY Titles FROM '/tmp/title.basics.tsv' NULL '\N' ENCODING 'UTF8';
SELECT * FROM Titles LIMIT 100;
				  
DROP TABLE IF EXISTS Principals;
CREATE TABLE Principals (
	tid char(10),
	ordering int,
	nid char(10),
	category varchar(32),
	job varchar(512),
	characters varchar(2048));
COPY Principals FROM '/tmp/title.principals.tsv' NULL '\N' ENCODING 'UTF8';
SELECT * FROM Principals LIMIT 100;
		  
DROP TABLE IF EXISTS Ratings;
CREATE TABLE Ratings (
        tid char(10),
        avg_rating numeric,
        num_votes numeric);
COPY Ratings FROM '/tmp/title.ratings.tsv' NULL '\N' ENCODING 'UTF8';
SELECT * FROM Ratings LIMIT 100;
*/

-- PROBLEM 1 (b)
-- create 5 tables
CREATE TABLE Movie (
	tid char(10) PRIMARY KEY,
	title varchar(1024),
	year int,
	length int,
	rating numeric);

CREATE TABLE Director (
	nid char(10) PRIMARY KEY,
	name varchar(128),
	birthYear int,
	deathYear int);

CREATE TABLE Actor (
	nid char(10) PRIMARY KEY,
	name varchar(128),
	birthYear int,
	deathYear int);

CREATE TABLE directs (
	nid char(10),
	tid char(10));

CREATE TABLE starsIn (
	nid char(10),
	tid char(10));

-- PROBLEM 1 (c)
-- insert data actor/actress (all)
INSERT INTO actor
(SELECT DISTINCT nid, primaryname AS name, birthyear, deathyear FROM persons
 WHERE primaryprofession LIKE '%actor%' OR primaryprofession LIKE '%actress%');

-- check about duplications name for actors
-- SELECT COUNT(*) FROM actor; --4397663
-- SELECT COUNT(DISTINCT nid) FROM actor; --4397663
-- SELECT COUNT(*) FROM (SELECT DISTINCT name, birthyear FROM actor) AS intable; --3858891; probably caused by same name but not same person

-- insert data director (all)
INSERT INTO director
(SELECT DISTINCT nid, primaryname AS name, birthyear, deathyear FROM persons
 WHERE primaryprofession LIKE '%director%');

-- insert data movie
INSERT INTO movie
(SELECT DISTINCT titles.tid AS tid, primarytitle AS title, startyear AS year, runtimeminutes AS length, avg_rating AS rating
 FROM titles JOIN ratings ON titles.tid = ratings.tid
 WHERE titles.ttype = 'movie' AND ratings.num_votes >= 10000 
 ORDER BY rating DESC
 LIMIT 5000);

SELECT * FROM principals LIMIT 300;
-- insert data starsin
INSERT INTO starsin
(SELECT nid, tid FROM principals
 WHERE tid in (SELECT tid FROM movie) AND category IN ('actor', 'actress') AND nid in (SELECT nid FROM actor));

-- insert data directs
INSERT INTO directs
(SELECT nid, tid FROM principals
 WHERE tid in (SELECT tid FROM movie) AND category = 'director' AND nid in (SELECT nid FROM director));
 
-- trim actor
DELETE FROM actor WHERE nid NOT IN (SELECT nid FROM starsin);

-- trim director
DELETE FROM director WHERE nid NOT IN (SELECT nid FROM directs);

-- SELECT COUNT(*) FROM director; --2274
-- SELECT COUNT(*) FROM (SELECT DISTINCT nid FROM directs) AS intable; --2274

-- PROBLEM 2 (a)
-- add foreign key for directs and starsin
ALTER TABLE directs
  ADD CONSTRAINT directs_nid_fkey
  FOREIGN KEY (nid) 
  REFERENCES director(nid) 
  ON UPDATE CASCADE
  ON DELETE CASCADE;

ALTER TABLE directs
  ADD CONSTRAINT directs_tid_fkey
  FOREIGN KEY (tid) 
  REFERENCES movie(tid) 
  ON UPDATE CASCADE
  ON DELETE CASCADE;

ALTER TABLE starsin
  ADD CONSTRAINT starsin_nid_fkey
  FOREIGN KEY (nid) 
  REFERENCES actor(nid) 
  ON UPDATE CASCADE
  ON DELETE CASCADE;

ALTER TABLE starsin
  ADD CONSTRAINT starsin_tid_fkey
  FOREIGN KEY (tid) 
  REFERENCES movie(tid) 
  ON UPDATE CASCADE
  ON DELETE CASCADE;

/*
select CONSTRAINT_NAME
from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where TABLE_NAME = 'starsin'

ALTER TABLE directs
DROP CONSTRAINT directs_nid_fkey, DROP CONSTRAINT directs_tid_fkey;
*/

-- PROBLEM 2 (b)
SELECT * FROM director
WHERE name = 'Alfred Hitchcock'; --nm0000033

UPDATE director
SET nid = '123456789'
WHERE name = 'Alfred Hitchcock';

SELECT * FROM directs
WHERE nid in ('123456789', 'nm0000033'); --only 123456789, no nm0000033

-- PROBLEM 2 (c)
SELECT * FROM actor
WHERE name = 'Nicolas Cage'; -- nm0000115 | Nicolas Cage | 1964 | null

DELETE FROM actor
WHERE name = 'Nicolas Cage';

SELECT * FROM starsin
WHERE nid = 'nm0000115'; -- no hit

-- PROBLEM 2 (d)
INSERT INTO starsin
VALUES ('nm0000115', 'test');
-- ERROR:  insert or update on table "starsin" violates foreign key constraint "starsin_nid_fkey"
-- DETAIL:  Key (nid)=(nm0000115 ) is not present in table "actor".

-- PROBLEM 2 (e)
UPDATE starsin
SET nid = 'nm0000115'
WHERE nid = 'nm0529813';
-- ERROR:  insert or update on table "starsin" violates foreign key constraint "starsin_nid_fkey"
-- DETAIL:  Key (nid)=(nm0000115 ) is not present in table "actor".

-- PROBLEM 3 (a)
SELECT * FROM movie LIMIT 20;
/*
"tt15327088"	"Kantara"	2022	148	9.5
"tt0111161 "	"The Shawshank Redemption"	1994	142	9.3
"tt0068646 "	"The Godfather"	1972	175	9.2
"tt0252487 "	"The Chaos Class"	1975	87	9.2
"tt2592910 "	"CM101MMXI Fundamentals"	2013	139	9.1
"tt0050083 "	"12 Angry Men"	1957	96	9.0
"tt0071562 "	"The Godfather Part II"	1974	202	9.0
"tt0108052 "	"Schindler's List"	1993	195	9.0
"tt0167260 "	"The Lord of the Rings: The Return of the King"	2003	201	9.0
"tt0468569 "	"The Dark Knight"	2008	152	9.0
"tt16492678"	"Demon Slayer: Kimetsu no Yaiba - Tsuzumi Mansion Arc"	2021	87	9.0
"tt5354160 "	"Mirror Game"	2016	147	9.0
"tt7466810 "	"777 Charlie"	2022	164	9.0
"tt0084302 "	"The Marathon Family"	1982	92	8.9
"tt0110912 "	"Pulp Fiction"	1994	154	8.9
"tt0252488 "	"The Chaos Class Failed the Class"	1976	91	8.9
"tt0253779 "	"Süt Kardesler"	1976	80	8.9
"tt0253828 "	"Tosun Pasa"	1976	90	8.9
"tt11989890"	"David Attenborough: A Life on Our Planet"	2020	83	8.9
"tt15097216"	"Jai Bhim"	2021	164	8.9
*/

-- PROBLEM 3 (b)
SELECT name, num FROM director JOIN
(SELECT nid, COUNT(*) AS num FROM directs
 GROUP BY nid
 ORDER BY COUNT(*) DESC
 LIMIT 20) AS numbers
 ON numbers.nid = director.nid;
 /*
"Alfred Hitchcock"	31
"Steven Spielberg"	26
"Martin Scorsese"	25
"Pedro Almodóvar"	17
"Akira Kurosawa"	17
"Joel Coen"	17
"Billy Wilder"	17
"Roman Polanski"	16
"Ridley Scott"	16
"Howard Hawks"	16
"William Wyler"	15
"Ethan Coen"	15
"Ingmar Bergman"	15
"Steven Soderbergh"	14
"John Ford"	13
"Robert Zemeckis"	13
"Richard Donner"	12
"David Cronenberg"	12
"Sidney Lumet"	12
"Brian De Palma"	12
*/

-- PROBLEM 3 (c)
SELECT actor.name AS actor, director.name AS director, num
FROM
(SELECT dnid, snid, COUNT(*) AS num FROM
 (SELECT directs.nid AS dnid, starsin.nid AS snid
  FROM directs JOIN starsin ON directs.tid = starsin.tid) AS pairs
 GROUP BY (dnid, snid)
 ORDER BY COUNT(*) DESC
 LIMIT 20) AS nids
JOIN actor ON nids.snid = actor.nid JOIN director ON nids.dnid = director.nid;
/*
actor   |          director         |    num
"Toshirô Mifune"	"Akira Kurosawa"	11
"John Wayne"	"John Ford"	9
"Robert De Niro"	"Martin Scorsese"	8
"Kemal Sunal"	"Ertem Egilmez"	7
"Gunnar Björnstrand"	"Ingmar Bergman"	7
"Max von Sydow"	"Ingmar Bergman"	7
"Ian McKellen"	"Peter Jackson"	6
"Megumi Ogata"	"Hideaki Anno"	6
"Ethan Hawke"	"Richard Linklater"	6
"Takashi Shimura"	"Akira Kurosawa"	6
"Antonio Banderas"	"Pedro Almodóvar"	6
"Jack Lemmon"	"Billy Wilder"	6
"Megumi Hayashibara"	"Hideaki Anno"	6
"Megumi Ogata"	"Kazuya Tsurumaki"	6
"Megumi Hayashibara"	"Kazuya Tsurumaki"	6
"Johnny Depp"	"Tim Burton"	5
"Ingrid Thulin"	"Ingmar Bergman"	5
"Terence Hill"	"Enzo Barboni"	5
"Anna Karina"	"Jean-Luc Godard"	5
"Yûko Miyamura"	"Kazuya Tsurumaki"	5
*/

-- PROBLEM 3 (d)
SELECT actor.name, COUNT(*)
FROM
(SELECT tid, title FROM movie
 WHERE title LIKE 'Star Trek%' AND year BETWEEN 1982 AND 1991) AS mms
JOIN starsin ON starsin.tid = mms.tid JOIN actor ON actor.nid = starsin.nid
GROUP BY actor.name;
/*
"DeForest Kelley"	3
"James Doohan"	3
"Leonard Nimoy"	3
"William Shatner"	3
*/