<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("admin");
     String s1=request.getParameter("password");      
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    
    Statement st=con.createStatement();
    
    ResultSet rs=st.executeQuery("select * from admin where admin='"+s+"' and password='"+s1+"'");
    if(rs.next())
               {
    response.sendRedirect("admin--accnt.jsp");
    }else
               {
    response.sendRedirect("index.jsp");
    }

}catch(Exception e)
               {
e.printStackTrace();
}
%>