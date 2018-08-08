<%-- 
    Document   : Login
    Created on : Oct 13, 2010, 7:26:03 PM
    Author     : phunglv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="process.jsp" method="POST">
            username: <input type="text" name="username" value="" /><br>
            password: <input type="password" name="password" value="" /><br>
            <input type="submit" value="Login" name="action" />
        </form>
    </body>
</html>
