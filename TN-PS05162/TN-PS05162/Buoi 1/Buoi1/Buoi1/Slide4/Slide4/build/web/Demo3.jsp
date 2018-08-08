<%-- 
    Document   : Demo3
    Created on : Sep 26, 2016, 10:08:11 AM
    Author     : Tu Ech
--%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.ProductsDAO"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <DanhSachSinhVien>
        <%
            ProductsDAO dsSanpham = new ProductsDAO();
            List<Product> list =  dsSanpham.showProduct(""); 
            for(Product sp: list){
        %>   
            <SinhVien MASV="<%= sp.getCode() %>" Ten="<%= sp.getName() %>"/>                  
        <%        
            }
        %>
    </DanhSachSinhVien>

