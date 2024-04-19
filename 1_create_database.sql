-- https://github.com/IzemHamouchene/M1-ISII-BDDA-23-24-TP1/tree/master

-- Create a new database 'UniversityDB'
CREATE DATABASE UniversityDB
GO
-- Use the UniversityDB by the SQL command : USE UniversityDB 
USE UniversityDB
GO
    
-- Create the table teacher 
CREATE TABLE teacher (
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName [NVARCHAR](30) NOT NULL,
    LastName [NVARCHAR](20) NOT NULL,
    Phone INT,
    Email NVARCHAR(255)
    );

-- Create the table student
CREATE TABLE student (
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName [NVARCHAR](30) NOT NULL,
    LastName [NVARCHAR](20) NOT NULL,
    Phone INT
    );

-- Create the table Cours 
CREATE TABLE Cours (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name [NVARCHAR](30) NOT NULL
    );

-- Create the table CoursTeacher
CREATE TABLE CoursTeacher (
    IdCoursTeacher INT PRIMARY KEY IDENTITY(1,1),
    IdTeacher INT,
    IdStudent INT,
    IdCour INT,
    DayWeek [NVARCHAR](30) check ( DayWeek in ('Sunday', 'Monday', 'Tuesday' , 'Wednesday' , 'Thursday' )),
    StartHour INT,
    FOREIGN KEY (IdTeacher) REFERENCES teacher(ID),
    FOREIGN KEY (IdStudent) REFERENCES student(ID),
    FOREIGN KEY (IdCour) REFERENCES Cours(ID)
    );
