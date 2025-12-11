CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

DROP TABLE IF EXISTS marks;

CREATE TABLE marks (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  subject1 INT,
  subject2 INT,
  subject3 INT,
  total INT,
  average FLOAT,
  grade VARCHAR(5)
);

INSERT INTO marks VALUES
(101, 'Anjali', 78, 85, 80, 243, 81.0, 'A'),
(102, 'Bala', 67, 72, 70, 209, 69.6, 'B'),
(103, 'Cynthiya', 90, 88, 92, 270, 90.0, 'A+'),
(104, 'Deepak', 56, 60, 58, 174, 58.0, 'C'),
(105, 'Elena', 82, 79, 85, 246, 82.0, 'A'),
(106, 'Farhan', 74, 69, 80, 223, 74.3, 'B'),
(107, 'Gayathri', 88, 92, 84, 264, 88.0, 'A'),
(108, 'Hari', 45, 50, 52, 147, 49.0, 'D'),
(109, 'Ishita', 95, 90, 93, 278, 92.6, 'A+'),
(110, 'John', 60, 65, 70, 195, 65.0, 'C');
