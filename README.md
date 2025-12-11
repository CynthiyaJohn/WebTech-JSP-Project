🌐 WebTech JSP Project

A simple three-tier web application developed using **JSP**, **Java**, **MySQL**, and **Apache Tomcat**.  
The project demonstrates dynamic content rendering and database connectivity using **JSP + JDBC + MySQL**.

This project contains two modules:

✔️ Online Examination System  
✔️ Student Mark List System  

These modules follow the three-tier architecture:
1. 🎨 Presentation Layer – JSP  
2. ⚙️ Application Logic – Java & JDBC  
3. 🗄️ Data Layer – MySQL  

------------------------------------------------------------

📁 Project Structure

WebTech-JSP-Project/
  OnlineExamSystem/
    exam.jsp
    result.jsp
  StudentMarkList/
    marklist.jsp
  sql/
    online_exam.sql
    student_db.sql
  screenshots/
    exam_page_1.png
    exam_page_2.png
    exam_page_3.png
    result_page.png
    marklist_page.png
  .gitignore
  README.md
  LICENSE

------------------------------------------------------------

🧰 Technologies Used

• JSP (Java Server Pages)  
• Apache Tomcat  
• MySQL / phpMyAdmin  
• JDBC (MySQL Connector/J)  
• HTML, CSS  

------------------------------------------------------------

🚀 How to Run the Project

1️⃣ Start XAMPP  
Enable:
- Apache  
- MySQL  
- Tomcat  

2️⃣ Import Databases via phpMyAdmin  
Go to: http://localhost/phpmyadmin  
Import:
- online_exam.sql  
- student_db.sql  

3️⃣ Deploy JSP Applications  
Copy folders to:

C:\xampp\tomcat\webapps\OnlineExamSystem\  
C:\xampp\tomcat\webapps\StudentMarkList\  

4️⃣ Add JDBC Connector  
Download MySQL Connector/J  
Copy the `.jar` file into:

C:\xampp\tomcat\lib\  

Restart Tomcat.

5️⃣ Open in Browser:

Online Exam →  
http://localhost:8080/OnlineExamSystem/exam.jsp  

Mark List →  
http://localhost:8080/StudentMarkList/marklist.jsp  

------------------------------------------------------------

📸 Screenshots

### 📝 Exam Page (Part 1)
![Exam Page 1](screenshots/exam_page_1.png)

### 📝 Exam Page (Part 2)
![Exam Page 2](screenshots/exam_page_2.png)

### 📝 Exam Page (Part 3)
![Exam Page 3](screenshots/exam_page_3.png)

### 🧮 Result Page
![Result Page](screenshots/result_page.png)

### 📘 Student Mark List
![Mark List](screenshots/marklist_page.png)

------------------------------------------------------------

📜 License  
This project is licensed under the **MIT License**.

------------------------------------------------------------

📝 Author  
Sharon Cynthiya J 
B.E. Computer Science and Engineering




