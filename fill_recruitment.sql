USE RECRUITMENT;

--clears any data already stored in table
DELETE FROM REC_LETTER;
DELETE FROM SCORE;
DELETE FROM ALUMNA;
DELETE FROM PNM;
DELETE FROM CHAPTER_MEMBER;
DELETE FROM SORORITY;
DELETE FROM GREEK_COUNCIL;

--inserts preliminary data into tables
INSERT INTO GREEK_COUNCIL
VALUES ("PHA"),
("IFC");


INSERT INTO SORORITY
VALUES ("Kappa Delta", "606 Rollins st", 35, "PHA"),
("Kappa Kappa Gamma", "512 Rollins st", 50, "PHA"),
("Zeta Tau Alpha", "912 Richmond Ave", 42, "PHA");


INSERT INTO CHAPTER_MEMBER
VALUES ("Tori Fischer", "Kappa Delta", "VP Recruitment", "St.Louis, MO", "dance", "computer science"),
("Megan Gerloff", "Kappa Delta", "Recruiter", "Hermann, MO", "FFA", "health sciences"),
("Gwen Morovitz", "Kappa Delta", "President", "Dallas, TX", "Girl Scouts", "business"),
("Ana Dolsky", "Kappa Delta", "Recruiter", "Kansas City, MO", "youth ministry", "health sciences"),
("Faith Cooney", "Zeta Tau Alpha", "Recruiter", "St.Louis, MO", "dance", "journalism"),
("Hannah Christ", "Zeta Tau Alpha", "Recruiter", "St.Louis, MO", "basketball", "computer science"),
("Caroline Kirby", "Kappa Kappa Gamma", "Recruiter", "St. Louis, MO", "FFA", "information technology"),
("Lauren Crawford", "Kappa Kappa Gamma", "Recruiter", "Athens, GA", "equestrian", "accounting");


INSERT INTO PNM
VALUES ("Camryn Elliott", "2004-05-04", 1, 3.2, "Kansas City, MO", "information technology", "dance", "Zeta Tau Alpha", "PHA"),
("Mia Kravitz", "2005-12-14", 2, 3.0, "Chicago, IL", "journalism", "youth ministry", "Kappa Kappa Gamma", "PHA"),
("Natalie Spicer", "2005-08-12", 3, 4.0, "Kansas City, MO", "health sciences", "girl scouts", "Kappa Delta", "PHA"),
("Claire Hill", "2003-05-04", 4, 3.7, "Chicago, IL", "accounting", "dance", "Kappa Delta", "PHA"),
("Camryn Larissey", "2003-08-01", 5, 2.8, "Cleveland, OH", "health sciences", "FFA", "Zeta Tau Alpha", "PHA"),
("Sophie Rodriguez", "2004-05-04", 6, 3.8, "St. Louis, MO", "business", "equestrian", "Kappa Kappa Gamma", "PHA"),
("Kirsten Adamski", "2003-01-03", 7, 3.5, "Dallas, TX", "computer science", "basektball", "Kappa Delta", "PHA");


INSERT INTO ALUMNA
VALUES ("Sarene Oliver", 1987, "Quebec, Canada", NULL, NULL, "Zeta Tau Alpha"),
("Jennifer Fischer", 1992, "St.Louis, MO", "Advisor", 2002, "Kappa Kappa Gamma"),
("Sue Adams", 1978, "Tampa, FL", "President", 1980, "Kappa Delta");


INSERT INTO SCORE
VALUES ("Megan Gerloff", 1, 4),
("Ana Dolsky", 2, 5),
("Megan Gerloff", 3, 3),
("Ana Dolsky", 4, 5),
("Megan Gerloff", 5, 1),
("Ana Dolsky", 6, 3),
("Megan Gerloff", 7, 2),
("Faith Cooney", 1, 2),
("Hannah Christ", 2, 3),
("Faith Cooney", 3, 4),
("Hannah Christ", 4, 5),
("Faith Cooney", 5, 2),
("Hannah Christ", 6, 4),
("Faith Cooney", 7, 3),
("Lauren Crawford", 1, 3),
("Caroline Kirby", 2, 1),
("Lauren Crawford", 3, 3),
("Caroline Kirby", 4, 2),
("Lauren Crawford", 5, 4),
("Caroline Kirby", 6, 2),
("Lauren Crawford", 7, 3);


INSERT INTO REC_LETTER
VALUES ("Sue Adams", 2, "Kappa Delta", "She is a very hard working, ambitious woman who loves to empower others"),
("Jennifer Fischer", 5, "Kappa Kappa Gamma", "Camryn is incredibly smart and kind woman who loves to give back to the community"),
("Sarene Oliver", 4, "Zeta Tau Alpha", "She is an increidbly kind, outgoing individual who would be a great addition to ZTA");

SELECT *
FROM ALUMNA;
SELECT *
FROM SCORE;
SELECT *
FROM PNM;
SELECT *
FROM REC_LETTER
SELECT *
FROM CHAPTER_MEMBER
