<%--
  Created by IntelliJ IDEA.
  User: asif
  Date: 24-03-2019
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Course</title>
</head>
<body>
<form action="InsertCourse" method="post">
    <h4>Course : </h4><input type="number" name="course" id="course"><br>
    <h4>Course Name : </h4><input type="text" name="cname" id="cname"><br>
    <h4>Department : </h4><input type="text" name="dept" id="dept"><br><br>
    <input type="submit" name="submit" id="insertCourseBtn">

</form>

</body>
</html>
