<%-- 
    Document   : index
    Created on : Sep 26, 2016, 9:05:58 AM
    Author     : Administrator
--%>

<%@page import="model.Product"%>
<%@page import="model.ProductsDAO"%>
<%@page import="java.util.List"%>
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

        <h1>San pham</h1>
        <table border="1">
            <tr>
                <td>Code</td>
                <td>Name</td>
                <td>Price</td>
            </tr>         
            <%
            ProductsDAO dsSanpham = new ProductsDAO();
            List<Product> list =  dsSanpham.showProduct(""); 
            for(Product sp: list){
                out.print("<tr><td>"+sp.getCode()+"</td>"
                        +"<td>"+sp.getName()+"</td>"
                        +"<td>"+sp.getPrice()+"</td>"
                        + "</tr>");
            }
            %>
        </table>
               <jsp:include page="_footer.jsp"></jsp:include> 
    </body>
</html>