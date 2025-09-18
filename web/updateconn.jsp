<%-- 
    Document   : updateconn
    Created on : Apr 16, 2024, 12:06:53 PM
    Author     : akshayjoy
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uid=request.getParameter("uid");
String email=request.getParameter("email");
String password=request.getParameter("password");
%>
<%
      try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","root");
    Statement st=con.
}