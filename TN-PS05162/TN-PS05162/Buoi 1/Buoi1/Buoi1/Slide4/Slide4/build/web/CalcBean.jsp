<%-- 
    Document   : CalcBean
    Created on : Jun 11, 2017, 12:12:10 AM
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
        <h1>Ket qua: </h1>
        <jsp:useBean id = "calc" class = "poly.bean.CalcBean"/>
        <jsp:setProperty name = "calc" property = "*"/>
        <B> Tong cua hai so la:  </B> 
        <jsp:getProperty name = "calc" property = "sum"/>
    </body>
</html>
