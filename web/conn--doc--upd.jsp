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
String s=request.getParameter("id");
String s1=request.getParameter("fname");
String s2=request.getParameter("lname");
String s3=request.getParameter("email");
String s4=request.getParameter("gender");
String s5=request.getParameter("qualification");
String s6=request.getParameter("specialisation");
String s7=request.getParameter("contact");
String s8=request.getParameter("address");
String s9=request.getParameter("password");
        


%>
<%
  try{
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
     Statement st=con.createStatement();
     int a=st.executeUpdate("update doctor set fname='"+s1+"',lname='"+s2+"',email='"+s3+"',gender='"+s4+"',qualification='"+s5+"',specialisation='"+s6+"',contact='"+s7+"',address='"+s8+"',password='"+s9+"' where id='"+s+"'");
     if(a!=0)
     {
     response.sendRedirect("view--doc.jsp?msg=update success");
     }else
         response.sendRedirect("view--doc.jsp?msg=update fail");
}catch(Exception e)
{  
e.printStackTrace();
}
%>