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
<style>
    body
    {
        margin:0;
        background: #f2f2f2;
    }
    .nav
    {
        width:100%;
        background:#000033;
        height: 80px;
    }
    ul
    {
        list-style:none;
        padding: 0;
        margin: 0;
        position: absolute;
    }
    ul li{
        float: left;
        margin-top: 30px;
        margin-left: 20px;
    }
    ul li a{
        width: 150px;
        color: white;

        text-decoration: none;
        font-size: 20px;
        text-align: center;
        padding: 10px;
        border-radius: 10px;
        font-family: Century Gothic;
        font-weight: bold;
        background-color: Green;
    }
    a:hover{
        background: #669900;
    }
    ul li ul{
        background: none;
    }
    ul li:hover  ul li {
        float: none;
        display: block;
        margin-top: 20px;
        margin-left: 0px;

    }
    ul li ul li{
        display: none;
    }
</style>


<div class = "nav">
    <ul>
        <li>
            <a href ="#">INSERT</a>
            <ul>
                <li><a href ="insert_student.jsp">STUDENT</a></li>
                <li><a href ="insert_course.jsp">COURSE</a></li>
                <li><a href ="insert_enroll.jsp">ENROLL</a></li>
                <li><a href ="insert_book_adaptation.jsp">BOOK_ADOPTION</a></li>
                <li><a href ="insert_text.jsp">TEXT</a></li>
            </ul>
        </li>

        <li><a href ="#">SHOW</a>
            <ul>
                <li><a href ="show_student.jsp">STUDENT</a></li>
                <li><a href ="show_course.jsp">COURSE</a></li>
                <li><a href ="show_enroll.jsp">ENROLL</a></li>
                <li><a href ="show_book_adaptation.jsp">BOOK_ADOPTION</a></li>
                <li><a href ="show_text.jsp">TEXT</a></li>
            </ul>
        </li>
        <li><a href ="#">QUERIES</a>
            <ul>
                <li><a href ="offered_by_cs_gt2.jsp">QUERY_QUESTION_4</a></li>
                <li><a href ="deptByPublisherForm.jsp">QUERY_QUESTION_5</a></li>
            </ul>
        </li>
    </ul>
</div>
</body>

</html>
