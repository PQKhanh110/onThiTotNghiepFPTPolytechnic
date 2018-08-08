<%-- 
    Document   : process
    Created on : Oct 13, 2016, 7:28:13 PM
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
        <h1>Page</h1>
        <jsp:useBean id="login" class="poly.bean.LoginBean" scope="session" />
        <jsp:setProperty name="login" property="*"/>
        <% if(login.isCheckLogin()){ %>
        <jsp:forward page="welcome.jsp"/>
        <% }else{ %>
        <h2>Sai thong tin dang nhap</h2>
        <% } %>
    </body>
</html>
