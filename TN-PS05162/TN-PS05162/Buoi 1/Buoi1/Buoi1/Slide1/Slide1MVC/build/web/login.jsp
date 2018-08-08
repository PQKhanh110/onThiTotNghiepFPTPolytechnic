<%-- 
    Document   : login
    Created on : May 28, 2017, 10:59:27 PM
    Author     : Tu Ech
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="controller" method="get">
            Username: <input type="text" name="txtUser"/><br/>
            Password: <input type="password" name="txtPass"/><br/>
            <input type="submit" name="action" value="login"/>
            <a href="controller?action=new">Register New User</a></
        </form>
    </body>
</html>
