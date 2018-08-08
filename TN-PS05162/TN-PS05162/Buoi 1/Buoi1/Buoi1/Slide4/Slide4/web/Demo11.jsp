<%-- 
    Document   : Demo11
    Created on : Jun 10, 2017, 11:53:59 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fpoly</title>
    </head>
    <body>
        <h1>JSP with Java Bean </h1>
        <jsp:useBean id="msg" class="poly.bean.SimpleBean"/>
        Init message (getProperty): <jsp:getProperty name="msg" property="message"/><br/>
  	             (Scriptlet)  : <%= msg.getMessage() %> <br/>
        Set message - setProperty : <jsp:setProperty name="msg" property="message" 
                         value="I am bean" />
  				<jsp:getProperty name="msg" property="message"/>
  		    - Scriptlet	  : <% msg.setMessage("I am Scriptlet"); %>
  				    <%= msg.getMessage() %>
    </body>
</html>
