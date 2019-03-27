<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 25-03-2019
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Department By Publisher</title>
    <link rel="stylesheet" href="table_style.css">
</head>
<body>

    <table border="2" width="320px">
        <tr><th id="title" >Show All Department That Has All It's Book Published By Specific Publisher</th></tr>
        <tr>
            <th>DEPARTMENT</th>
        </tr>
        <%
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                String url = "jdbc:mariadb://localhost:3306/student_database";
                String username = "root";
                String password = "k3159";

                Connection conn = DriverManager.getConnection(url, username, password);
                PreparedStatement preparedStatement=conn.prepareStatement("select dept from course natural join " +
                        "book_adaptation natural join text where publisher like ? " +
                        "except" +
                        " select dept from course natural join book_adaptation" +
                        " natural join text where publisher not like ?");
                String publisher=request.getParameter("deptByPublisherAttr");
                preparedStatement.setString(1,publisher.trim());
                preparedStatement.setString(2,publisher.trim());
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getString("dept") %>
            </td>
        </tr>
        <%

            }
        %>
    </table>
    <%
            rs.close();
            preparedStatement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    %>


</body>
</html>
