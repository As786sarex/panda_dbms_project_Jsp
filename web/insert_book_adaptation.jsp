<%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 25-03-2019
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Book Adaptation</title>
</head>
<body>
<form action="InsertBookAdapt" method="post">
    <h4>Course : </h4><input type="number" name="A_course" id="A_course"><br>
    <h4>Semester : </h4><input type="text" name="semester" id="semester"><br>
    <h4>Book Isbn : </h4><input type="number" name="book_isbn" id="book_isbn"><br><br>
    <input type="submit" name="submit" id="insertAdaptBtn">

</form>

</body>
</html>
