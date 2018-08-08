<%-- 
    Document   : Demo7
    Created on : Sep 27, 2016, 6:53:58 PM
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
        <jsp:include page="_header.jsp"></jsp:include>
        <jsp:include page="_menu.jsp"></jsp:include>
        <h1>Include</h1>
        <b>Demo7.jsp Page</b><br>
        <jsp:include page="Demo8.jsp" /> 
        
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
