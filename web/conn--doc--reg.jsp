<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("docid");
     String s0=request.getParameter("fname");
     String s1=request.getParameter("lname");
     String s2=request.getParameter("email");
     String s3=request.getParameter("ok");
     String s4=request.getParameter("qualification");
     String s5=request.getParameter("specialisation");
     String s6=request.getParameter("contact");
     String s7=request.getParameter("address");
     String s8=request.getParameter("password");      
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    Statement st = con.createStatement();
        st.executeUpdate("insert into doctor(docid,fname,lname,email,gender,qualification,specialisation,contact,address,password) values ('"+s+"','"+s0+"','"+s1+"','"+s2+"',"
                + "'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
    response.sendRedirect("doc--log.jsp?msg=Registeration successful");

}catch(Exception e)
               {
e.printStackTrace();
}
%>