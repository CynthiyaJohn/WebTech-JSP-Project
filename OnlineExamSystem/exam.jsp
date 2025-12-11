<%@ page import="java.sql.*" %>
<html>
<head><title>Online Examination</title></head>
<body>
<h2>Online Examination</h2>
<form action="result.jsp" method="post">
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from questions");
    while(rs.next()){
%>
    <p><b><%= rs.getInt("qid") %>. <%= rs.getString("question") %></b></p>
    <input type="radio" name="q<%= rs.getInt("qid") %>" value="<%= rs.getString("option1") %>"><%= rs.getString("option1") %><br>
    <input type="radio" name="q<%= rs.getInt("qid") %>" value="<%= rs.getString("option2") %>"><%= rs.getString("option2") %><br>
    <input type="radio" name="q<%= rs.getInt("qid") %>" value="<%= rs.getString("option3") %>"><%= rs.getString("option3") %><br>
    <input type="radio" name="q<%= rs.getInt("qid") %>" value="<%= rs.getString("option4") %>"><%= rs.getString("option4") %><br><br>
<%
    }
    con.close();
%>
<input type="submit" value="Submit">
</form>
</body>
</html>
