<%@ page import="java.sql.*" %>
<html>
<head><title>Exam Result</title></head>
<body>
<h2>Exam Result</h2>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_exam", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from questions");
    int score = 0;
    while(rs.next()){
        String ans = request.getParameter("q" + rs.getInt("qid"));
        if(ans != null && ans.equals(rs.getString("answer"))){
            score++;
        }
    }
    out.println("<h3>Your Score: " + score + "</h3>");
    con.close();
%>
</body>
</html>
