-- Use the UniversityDB Database
USE UniversityDB
GO

-- Insert teacher Data
INSERT INTO teacher (FirstName,LastName,Phone,Email)
VALUES ('sofian' , 'family1' , 123 , 's_f3@gmail.com')  ,  ('yacin' , 'family2' , 456 , 'y_ f4@gmail.com');

-- Insert student Data
INSERT INTO student (FirstName,LastName,Phone)
VALUES ('mohamed', 'family3', 123)  ,  ('mohamed', 'family3', 123);

-- Insert cours Data
INSERT INTO cours (Name)
VALUES ('MultiMedia')  ,  ('BDDA');

-- Insert coursTeacher
INSERT INTO coursTeacher (IdTeacher,IdStudent,IdCour,DayWeek,StartHour)
VALUES (1, 1, 1, 'Thursday', 8)  ,  (1, 2, 1, 'Thursday', 8)  ,  (2, 2, 2, 'Thursday', 9);
