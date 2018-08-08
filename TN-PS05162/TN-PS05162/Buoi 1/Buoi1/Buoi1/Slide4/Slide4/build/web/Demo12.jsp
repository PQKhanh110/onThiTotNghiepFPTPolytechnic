<%-- 
    Document   : Demo12
    Created on : Jun 11, 2017, 12:09:44 AM
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
        <h1>Tong hai so</h1>
        <form action = "CalcBean.jsp" METHOD = "GET">
            So 1:<input type = "text" name = "value1"> <br>
            So 2:<input type = "text" name = "value2"> <br> 
            <input type = "submit" name = "Calculate" VALUE = "Calculate"> 
        </form>
    </body>
</html>
