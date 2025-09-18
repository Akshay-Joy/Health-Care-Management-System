<%-- 
    Document   : delete.jsp
    Created on : Apr 3, 2024, 1:50:57 PM
    Author     : VAMSI
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

try{
    int key=Integer.parseInt(request.getParameter("id"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/sample","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("delete from doctor where id="+key);
    if(a!=0)
    {
        response.sendRedirect("view--doc.jsp?msg=Successfully deleted");
    } else
    {
       response.sendRedirect("view--doc.jsp?msg=Delete fail"); 
    }} catch(Exception e)
               {
e.printStackTrace();
                    
}
%>