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
    <title>Insert Student</title>
</head>
<body>
<form action="InsertStudent" method="post">
    <h4>Registration Number : </h4><input type="number" name="regno" id="regno" maxlength="6"><br>
    <h4>Name : </h4><input type="text" name="name" id="name"><br>
    <h4>Major : </h4><input type="text" name="major" id="major"><br>
    <h4>DOB : </h4><input type="number" name="bdate" id="bdate"><br><br>
    <input type="submit" name="submit" id="insertStudentBtn">

</form>

</body>
</html>
