<%-- 
    Document   : show
    Created on : Sep 7, 2016, 11:15:05 PM
    Author     : Tu Ech
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
    </head>
    <body>
        <h1>Show result</h1>
        <c:set var="info" value="${requestScope.INFO}" />
        <c:if test="${not empty info}">
        <table border="1">
            <thead>
                <tr>
                    <td>No.</td><td>Username</td><td>Lastname</td><td>Roles</td>
                    <td>Delete</td><td>Update</td>                 
                </tr>                    
            </thead>
            <tbody>
                <c:set var="count" value="0"/>
                <c:forEach var="rows" items="${info}">
                <form action="Controller">
                    <c:set var="count" value="${count + 1}"/>
                    <tr>
                        <td>${count}</td>
                        <td>${rows.username}
                            <input type="hidden" name="txtUsername" value="${rows.username}"/>
                        </td>
                        <td><input type="text" name="txtLast" value="${rows.lastname}"/></td>
                        <td><input type="checkbox" name="chkAdmin" value="ADMIN"
                                   <c:if test="${rows.roles}">checked</c:if>  />      
                        </td>
                        <c:url var="delete" value="Controller">
                            <c:param name="btAction" value="Delete"/>
                            <c:param name="username" value="${rows.username}"/>
                            <c:param name="txtSearch" value="${param.txtSearch}"/>
                        </c:url>
                        <td> <a href="${delete}">Delete</a>  </td>
                        <td>
                            <input type="hidden" name="txtSearch" value="${param.txtSearch}"/>
                            <input type="submit" value="Update" name="btAction" />
                        </td>
                    </tr>
                </form>
                </c:forEach>
            </tbody>
        </table>
        </c:if>
        <c:url var="back" value="Controller">
            <c:param name="btAction" value="Back"/>
        </c:url>
        <a href="${back}" >Quay tro lai trang Search</a>
    </body>
</html>
