<%-- 
    Document   : Demo6
    Created on : Sep 26, 2016, 10:42:02 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calcutator</h1>
        <form action="Demo6.jsp">
            So 1: <input type="text" name="txtSo1" value=""/><br/>
            So 2: <input type="text" name="txtSo2" value=""/>
            <input type="submit" name="action" value="Chia"/>
        </form>
        <%
            String so1 = request.getParameter("txtSo1");
            String so2 = request.getParameter("txtSo2"); 
            if(so1 != null && so2 !=null){
                int n1 = Integer.parseInt(so1);
                int n2 = Integer.parseInt(so2);
                int ketqua = n1/n2;
                out.print("Ket qua: "+ ketqua);
            }            
        %>
    </body>
</html>
