<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 25-03-2019
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show All Text</title>
    <link rel="stylesheet" href="table_style.css">
</head>
<body>
<form method="post">

    <table border="2">
        <tr><th id="title" colspan="4">Show All Text Books</th></tr>
        <tr>
            <th>BOOK ISBN</th>
            <th>BOOK TITLE</th>
            <th>PUBLISHER</th>
            <th>AUTHOR</th>
        </tr>
        <%
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                String url = "jdbc:mariadb://localhost:3306/student_database";
                String username = "root";
                String password = "k3159";
                String query = "select * from text order by book_isbn";
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getInt("book_isbn") %>
            </td>

            <td><%=rs.getString("book_title") %>
            </td>

            <td><%=rs.getString("publisher") %>
            </td>

            <td><%=rs.getString("author") %>
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
