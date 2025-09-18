<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("docid");
     String s1=request.getParameter("email");
     String s2=request.getParameter("qualification");
     String s3=request.getParameter("password");      
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    
    Statement st=con.createStatement();
    
    ResultSet rs=st.executeQuery("select * from doctor where docid='"+s+"' and email='"+s1+"' and qualification='"+s2+"' and password='"+s3+"'");
    if(rs.next())
               {
    response.sendRedirect("doc--home.jsp");
    }else
               {
    response.sendRedirect("doc--log--fail.jsp");
    }

}catch(Exception e)
               {
e.printStackTrace();
}
%>