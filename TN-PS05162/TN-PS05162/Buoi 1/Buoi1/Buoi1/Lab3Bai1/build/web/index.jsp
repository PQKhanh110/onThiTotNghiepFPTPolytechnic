<%-- 
    Document   : index
    Created on : Sep 7, 2016, 9:37:58 PM
    Author     : Tu Ech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login page</h1>
        <form action="Controller" method="post" >
            Username <input type="text" name="txtUsername" value=""/> <br/>
            Password <input type="password" name="txtPass" value=""/><br/>
            <input type="submit" value="Login" name="btAction"/>
            <input type="reset" value="Reset"/>
        </form>                       
    </body>
</html>
