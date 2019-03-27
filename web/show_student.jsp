<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 24-03-2019
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="table_style.css">
</head>
<body>


<form method="post">

    <table border="3">
        <tr><th id="title" colspan="4">Show All Students</th></tr>
        <tr>
            <th>REGNO</th>
            <th>NAME</th>
            <th>MAJOR</th>
            <th>DOB</th>
        </tr>
        <%
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                String url = "jdbc:mariadb://localhost:3306/student_database";
                String username = "root";
                String password = "k3159";
                String query = "select * from student";
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getInt("regno") %>
            </td>

            <td><%=rs.getString("name") %>
            </td>

            <td><%=rs.getString("major") %>
            </td>

            <td><%=rs.getString("bdate") %>
            </td>
        </tr>
        <%

            }
        %>
    </table>
    <%
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    %>

</form>
</body>
</html>
