<%-- 
    Document   : Demo1
    Created on : June 08, 2017, 9:00:34 AM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>import ArrayList</h1>
        <%
            ArrayList<Integer> ds = new ArrayList<Integer>();
            for(Integer i=0;i<=10;i++){
                ds.add(i);
                out.print(i+" ");
            }
        %>
    </body>
</html>
