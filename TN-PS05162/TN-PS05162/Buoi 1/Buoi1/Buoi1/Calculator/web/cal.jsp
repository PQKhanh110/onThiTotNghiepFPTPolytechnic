<%-- 
    Document   : cal
    Created on : Sep 13, 2016, 10:04:34 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculator</h1>
        <form action="Controller" method="get">
            <input type="text" name="txtSo1" value=""/><br/>
            <input type="text" name="txtSo2" value=""/><br/>
            <input type="submit" name="action" value="+"/>
            <input type="submit" name="action" value="-"/>
            <input type="submit" name="action" value="*"/>
            <input type="submit" name="action" value="/"/>
        </form>
    </body>
</html>
