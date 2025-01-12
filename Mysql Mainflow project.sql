CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students ( 
StudentID INT 
AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(50),
Gender CHAR(1),
Age INT,
Grade CHAR(1),
MathScore INT,
ScienceScore INT,
EnglishScore INT
);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES 
('John', 'M', 15, 'A', 85, 90, 88),
('Smrity', 'F', 16, 'B', 78, 82, 80),
('Johnson', 'F', 15, 'A', 92, 88, 91),
('Boby', 'M', 14, 'C', 65, 70, 68),
('Charlie', 'M', 17, 'B', 75, 78, 80),
('Davis', 'F', 14, 'A', 88, 92, 89),
('Franky', 'M', 16, 'B', 80, 85, 83),
('Gracy', 'F', 15, 'A', 95, 94, 96),
('Harry', 'M', 17, 'C', 60, 65, 58),
('Ivy Scott', 'F', 14, 'B', 78, 84, 82);
SELECT * FROM Students;
SELECT 
    AVG(MathScore) AS AverageMathScore,
    AVG(ScienceScore) AS AverageScienceScore,
    AVG(EnglishScore) AS AverageEnglishScore
FROM Students;
SELECT 
    StudentID, Name, 
    (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
SELECT 
    Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;
SELECT 
    Gender,
    AVG(MathScore) AS AverageMathScore,
    AVG(ScienceScore) AS AverageScienceScore,
    AVG(EnglishScore) AS AverageEnglishScore
FROM Students
GROUP BY Gender;
SELECT 
    StudentID, Name, MathScore
FROM Students
WHERE MathScore > 80;
UPDATE Students
SET Grade = 'B'
WHERE StudentID = 1;
