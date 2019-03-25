<%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 25-03-2019
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Student</title>
</head>
<body>
<form action="InsertText" method="post">
    <h4>Book Isbn : </h4><input type="number" name="book_isbn" id="book_isbn"><br>
    <h4>Book Title : </h4><input type="text" name="title" id="title"><br>
    <h4>Publisher : </h4><input type="text" name="publisher" id="publisher"><br>
    <h4>Author: </h4><input type="text" name="author" id="author"><br><br>
    <input type="submit" name="submit" id="insertTextBtn">

</form>

</body>
</html>
