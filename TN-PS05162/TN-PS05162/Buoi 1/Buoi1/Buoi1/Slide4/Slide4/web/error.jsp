<%-- 
    Document   : error
    Created on : Sep 26, 2016, 10:49:11 AM
    Author     : Administrator

--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Error:</h1> 
        <%            
            out.println("<a href='Demo6.jsp'>Back</a>");
            //exception.printStackTrace(new PrintWriter(out)); 
        %>
        <font color="red">        
              <%= exception.toString()%>
        </font>
    </body>
</html>
