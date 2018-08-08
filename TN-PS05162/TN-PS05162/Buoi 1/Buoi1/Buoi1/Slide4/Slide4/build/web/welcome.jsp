<%-- 
    Document   : welcome
    Created on : Oct 13, 2010, 7:38:59 PM
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
        <jsp:useBean id="login" class="poly.bean.LoginBean" scope="session"/>
        <font color="red">Welcome <jsp:getProperty name="login" property="lastname" /> 
        </font><br/>
        <h1>Home page</h1>
    </body>
</html>








