--creates database entities/tables and establishes primary and foreign keys
CREATE SCHEMA Recruitment;
USE Recruitment;

CREATE TABLE GREEK_COUNCIL
(
Name varchar(32) NOT NULL,
PRIMARY KEY(Name)
);

CREATE TABLE SORORITY
(
Name varchar(32) NOT NULL,
Address varchar(32),
Max_party INT NOT NULL,
Council varchar(32) NOT NULL,
PRIMARY KEY(Name),
FOREIGN KEY (Council) REFERENCES GREEK_COUNCIL(Name)
);

CREATE TABLE CHAPTER_MEMBER
(
Name varchar(32) NOT NULL,
S_name varchar(32) NOT NULL,
Role varchar(32) NOT NULL,
Hometown varchar(32),
Activity varchar(32),
PRIMARY KEY (Name, S_name),
FOREIGN KEY(S_name) REFERENCES SORORITY(Name)
);

CREATE TABLE PNM
(
Name varchar(32) NOT NULL,
DOB DATE,
ID INT NOT NULL,
GPA FLOAT NOT NULL,
Hometown varchar(32),
Major varchar(32),
Activity varchar(32),
Preference varchar (32),
Council varchar(32),
PRIMARY KEY (ID),
FOREIGN KEY(PREFERENCE) REFERENCES SORORITY(Name),
FOREIGN KEY(COUNCIL) REFERENCES GREEK_COUNCIL(Name)
);

CREATE TABLE ALUMNA
(
Name varchar(32) NOT NULL,
PC INT,
Location varchar(32),
Position varchar(32),
Position_year varchar(32),
S_name varchar(32) NOT NULL,
PRIMARY KEY (Name, S_name),
FOREIGN KEY (S_name) REFERENCES SORORITY(Name)
);

CREATE TABLE SCORE
(
Scorer varchar(32) NOT NULL,
Receiver INT NOT NULL,
Score INT NOT NULL,
FOREIGN KEY (Receiver) REFERENCES PNM(ID),
FOREIGN KEY (Scorer) REFERENCES CHAPTER_MEMBER(Name)
);

CREATE TABLE REC_LETTER
(
Alum varchar(32) NOT NULL,
P_id INT NOT NULL,
chapter varchar(32) NOT NULL,
Rec varchar(300) NOT NULL,
FOREIGN KEY (P_id) REFERENCES PNM(ID),
FOREIGN KEY (Alum, chapter) REFERENCES ALUMNA(Name, S_name)
);

CREATE TABLE SCHEDULE
(
Date DATE NOT NULL,
Time INT NOT NULL,
Chapter varchar(32) NOT NULL,
Pnm varchar(32) NOT NULL,
Recruiter varchar(32)
);



/*DROP TABLE SCORE;
DROP TABLE REC_LETTER;
DROP TABLE SCHEDULE;
DROP TABLE ALUMNA;
DROP TABLE PNM;
DROP TABLE CHAPTER_MEMBER;
DROP TABLE SORORITY;
DROP TABLE GREEK_COUNCIL;
DROP SCHEMA Recruitment;*/
