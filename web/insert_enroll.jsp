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
    <title>Title</title>
</head>
<body>
<form action="InsertEnroll" method="post">
    <h4>Registration Number : </h4><input type="number" name="regno" id="regno" maxlength="6"><br>
    <h4>Course Number : </h4><input type="number" name="course" id="course"><br>
    <h4>Semester : </h4><input type="text" name="sem" id="sem" maxlength="1"><br>
    <h4>Marks : </h4><input type="number" name="marks" id="marks" maxlength="3"><br><br>
    <input type="submit" name="submit" id="insertEnrollBtn">

</form>

</body>
</html>
