<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Student Mark List</title>
  <style>
    body { font-family: Arial, sans-serif; padding: 20px; }
    h1 { font-size: 32px; }
    table { border-collapse: collapse; width: 80%; max-width: 1000px; }
    th, td { border: 1px solid #333; padding: 8px 12px; text-align: center; }
    th { background: #f2f2f2; font-weight: bold; }
    tr:nth-child(even) { background: #fafafa; }
  </style>
</head>
<body>
<h1>Student Mark List</h1>

<%
    // --- CHANGE these values if your DB/user/password differ ---
    String jdbcUrl = "jdbc:mysql://localhost:3306/student_db"; // database name: student_db
    String dbUser = "root";
    String dbPass = ""; // set password if you have one

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
        st = con.createStatement();
        rs = st.executeQuery("SELECT * FROM marks");

%>

<table>
  <tr>
    <th>Roll No</th>
    <th>Name</th>
    <th>Subject 1</th>
    <th>Subject 2</th>
    <th>Subject 3</th>
    <th>Total</th>
    <th>Average</th>
    <th>Grade</th>
  </tr>

<%
        while (rs.next()) {
%>
  <tr>
    <td><%= rs.getInt("rollno") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getObject("subject1") %></td>
    <td><%= rs.getObject("subject2") %></td>
    <td><%= rs.getObject("subject3") %></td>
    <td><%= rs.getObject("total") %></td>
    <td><%= rs.getObject("average") %></td>
    <td><%= rs.getString("grade") %></td>
  </tr>
<%
        } // end while
    } catch (Exception e) {
%>
    <p style="color:red">Error: <%= e.getMessage() %></p>
<%
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (st != null) st.close(); } catch (Exception e) {}
        try { if (con != null) con.close(); } catch (Exception e) {}
    }
%>
</table>
</body>
</html>

