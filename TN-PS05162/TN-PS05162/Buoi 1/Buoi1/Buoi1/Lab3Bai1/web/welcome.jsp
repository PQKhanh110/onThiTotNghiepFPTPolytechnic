<%-- 
    Document   : welcome
    Created on : Sep 7, 2016, 10:07:16 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <font color="red"> welcome, ${sessionScope.USER}</font>
        <h1>Welcome to MVC </h1>
        <form action="Controller">
            Name <input type="text" name="txtSearch" value=""><br/>
            <input type="submit" value="Search" name="btAction"/>
        </form>
    </body>
</html>
