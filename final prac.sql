-- QN1  (e)
CREATE TABLE tb1student(
StudentName VARCHAR (255),
StudentID INT AUTO_INCREMENT PRIMARY KEY,
Birthdate VARCHAR (255),
Year VARCHAR (255),
MobileNo INT
);

INSERT INTO tb1student(StudentName, StudentID, Birthdate , Year, MobileNo)
VALUES ("Janen", 235, "12/1/1987", "Y1S2", 0722245321),
	    ("Nicholas", 26, "22/7/2002", "Y1S1", 0720458674),
        ("Cryus", 1, "15/6/1989", "Y2S1", 0704231345),
        ("Neema", 2, "29/11/2008", "Y2S1", 0733876987),
        ("Caroline", 3, "18/10/2002", "Y1S1", 0732568448),
        ("Judith", 29, "17/6/2003", "Y4S2", 0711234567),
        ("Grace", 127, "14/1/2000", "Y1S2", 0733765987);
-- (i)
CREATE TABLE tbFinace(
StudentID INT ,
Tution_Fee VARCHAR (255),
Adiministration_Fee VARCHAR (255),
Exams_Fee INT,
Medical_Fee INT,
FOREIGN KEY (StudentID ) references tb1student(StudentID )
);

INSERT INTO tbFinace(StudentID , Tution_Fee , Adiministration_Fee, Exams_Fee , Medical_Fee)
VALUES (235, "30,000", "5,000", 3000, 4000),
       (26, "40,000", "5,000", 2000, 4000),
       (1, "34,000", "5,000", 3000, 4000),
       (2,"23,000", "5,000", 3000, 4000),
       (3, "20,000", "5,000", 3000, 4000),
       (299, "35,000", "5,000", 2000, 4000),
       (127, "28,000", "5000", 3000,4000);
      
      -- (ii)
SELECT Tution_Fee  , Year
FROM tbFinace
JOIN tbFinace ON StudentID = StudentID
WHERE Year = "Y1S1" 
     
--        -- (iii)
SELECT  StudentName, StudentID , Year, Tution_Fee  
FROM  tb1student
JOIN tbFinace ON StudentID = StudentID
WHERE Tuition_Fee >= "30,000";


-- (iv)
INSERT INTO tb1student (StudentName,StudentID,Birthdate,Year,MobileNo)
VALUES("Dan",999,"20/04/2002","Y1S2",0723456123);

-- (v)
UPDATE  tb1student
SET StudentName = "Nelson"
WHERE StudentID = 26

-- (vi)
SELECT 
MAX(Tution_Fee) AS "Higest Amount"
MIN(Tution_Fee) AS "Lowest Amount"
FROM tbFinace;

-- QN 4

CREATE DATABASE sutudent_info;
USE student_info;

CREATE TABLE student(
Code VARCHAR (255),
Stud_id INT PRIMARY KEY,
Name VARCHAR (255)
);

-- (ii)
INSERT INTO student(Code,Stud_id,Name)
VALUES ("IMTIS", 001, "Damaris"),
       ("BIT", 002, "Okal"),
       ("BIT", 003, "Kahuria"),
       ("CIT", 004, "Mwangi");
       
CREATE TABLE Course(
Code VARCHAR (255),
Title VARCHAR (255)
);
INSERT INTO Course(Code,Title)
VALUES ("IMTIS",  "into.systems"),
       ("BIT",  "Bachelor of IT"),
       ("CIT", "Cert in It"),
       ("DIT",  "Dip in IT");
       
-- (i)
SELECT FROM Student;
SELECT FROM Course;


-- (ii)

UPDATE student
SET Name = "Bright", 
WHERE Stud_id= 123;

-- (iv)
DELETE 
FROM student 
WHERE Code = "BIT" ;

-- (c)
 SELECT *
FROM student
ORDER BY Name ASC; 




       
       
       
	





















