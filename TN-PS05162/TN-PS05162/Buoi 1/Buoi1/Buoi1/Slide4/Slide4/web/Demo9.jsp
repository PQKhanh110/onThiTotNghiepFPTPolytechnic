<%-- 
    Document   : Demo9
    Created on : Sep 27, 2016, 6:58:22 PM
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
        <h1>Demo9.jsp</h1>
        <jsp:forward page="Demo10.jsp" > 
            <jsp:param name="ten" value="Teo"/>
        </jsp:forward> 
    </body>
</html>
