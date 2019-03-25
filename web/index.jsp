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
    <title>INDEX PAGE</title>
</head>
<body>
<script type="text/javascript" language="JavaScript" >
    function doTransfer() {
        window.open('show_student.jsp');
    }
</script>
<button name="Show All Students" title="Show All Students" onclick="doTransfer();">Show All Students</button>
</body>
</html>
