<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 25-03-2019
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book By Cs Greater Than 2</title>
    <link rel="stylesheet" href="table_style.css">
</head>
<body>


<div >
<table>
    <tr><th id="title" colspan="3">Show All Book By CSE That Use More Than 2 Books</th></tr>

    <tr>
        <th>COURSE NUMBER</th>
        <th>BOOK ISBN</th>
        <th>BOOK TITLE</th>
    </tr>
    <tbody>
    <%
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            String url = "jdbc:mariadb://localhost:3306/student_database";
            String username = "root";
            String password = "k3159";
            String query = "select course,book_isbn,book_title from text" +
                    " natural join course natural join book_adaptation where course" +
                    " in (select course from text natural join course natural" +
                    " join book_adaptation where dept like 'cse' group by course having count(course)>=2);";
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {

    %>

    <tr>
        <td ><%=rs.getInt("course") %>
        </td>

        <td><%=rs.getInt("book_isbn") %>
        </td>

        <td><%=rs.getString("book_title") %>
        </td>
    </tr>
    <%

        }
    %>
    </tbody>
</table>
</div>
<%
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

%>


</body>
</html>
