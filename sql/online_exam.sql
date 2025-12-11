CREATE DATABASE IF NOT EXISTS online_exam;
USE online_exam;

DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
  qid INT PRIMARY KEY,
  question VARCHAR(255),
  option1 VARCHAR(100),
  option2 VARCHAR(100),
  option3 VARCHAR(100),
  option4 VARCHAR(100),
  answer VARCHAR(100)
);

INSERT INTO questions VALUES
(1,'Which language is used for web development?','C','Python','HTML','Java','HTML'),
(2,'Which tag is used to display an image in HTML?','&lt;img&gt;','&lt;src&gt;','&lt;image&gt;','&lt;pic&gt;','&lt;img&gt;'),
(3,'What does CSS stand for?','Color Style Sheet','Cascading Style Sheets','Computer Style Syntax','Creative Styling System','Cascading Style Sheets'),
(4,'Which protocol is used for secure communication?','HTTP','FTP','HTTPS','SMTP','HTTPS'),
(5,'Which company developed Java?','Microsoft','Oracle','Sun Microsystems','IBM','Sun Microsystems'),
(6,'What does SQL stand for?','Simple Query Language','Structured Query Language','Sequential Query List','Server Query Library','Structured Query Language'),
(7,'Which symbol is used for comments in HTML?','//','#','<!-- -->','/* */','<!-- -->'),
(8,'Which CSS property changes text color?','font-color','text-style','color','background-color','color'),
(9,'Which HTML element is used for the largest heading?','&lt;h6&gt;','&lt;h1&gt;','&lt;header&gt;','&lt;heading&gt;','&lt;h1&gt;'),
(10,'Which of the following is NOT a database?','MySQL','MongoDB','Oracle','HTML','HTML');
