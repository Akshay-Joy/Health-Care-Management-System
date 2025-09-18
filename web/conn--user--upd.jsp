<%-- 
    Document   : updatecon
    Created on : 15 Apr, 2024, 12:04:06 PM
    Author     : TOSHIBA
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String s=request.getParameter("uid");
String s1=request.getParameter("fname");
String s2=request.getParameter("lname");
String s3=request.getParameter("email");
String s4=request.getParameter("gender");
String s5=request.getParameter("contactnumber");
String s6=request.getParameter("address");
String s7=request.getParameter("password");

%>
<%
  try{
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
     Statement st=con.createStatement();
     int a=st.executeUpdate("update user set fname='"+s1+"',lname='"+s2+"',email='"+s3+"',gender='"+s4+"',contactnumber='"+s5+"',address='"+s6+"',password='"+s7+"' where uid='"+s+"'");
     if(a!=0)
     {
     response.sendRedirect("view--user.jsp?msg=update success");
     }else
         response.sendRedirect("view--user.jsp?msg=update fail");
}catch(Exception e)
{  
e.printStackTrace();
}
%>