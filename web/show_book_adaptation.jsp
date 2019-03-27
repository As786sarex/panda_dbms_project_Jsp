<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 25-03-2019
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show All Book Adaptation</title>
    <link rel="stylesheet" href="table_style.css">
</head>
<body>

<form method="post">

    <table border="3">
        <tr><th id="title" colspan="3">Show All Book Adaptation</th></tr>
        <tr>
            <th>COURSE NUMBER</th>
            <th>SEMESTER</th>
            <th>BOOK ISBN</th>
        </tr>
        <%
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                String url = "jdbc:mariadb://localhost:3306/student_database";
                String username = "root";
                String password = "k3159";
                String query = "select * from book_adaptation";
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getInt("course") %>
            </td>

            <td><%=rs.getInt("sem") %>
            </td>

            <td><%=rs.getInt("book_isbn") %>
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
