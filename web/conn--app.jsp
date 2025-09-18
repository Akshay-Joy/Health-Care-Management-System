<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String s=request.getParameter("docname");
     String s1=request.getParameter("specialisation");
     String s2=request.getParameter("date");
      String s3=request.getParameter("disease");
      String s4=request.getParameter("email");
           
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    Statement st = con.createStatement();
        st.executeUpdate("insert into request(docname,specialisation,date,disease,email) values ('"+s+"','"+s1+"','"+s2+"',"
                + "'"+s3+"','"+s4+"')");
   
    response.sendRedirect("user--home.jsp?msg=Appointment successful");

}catch(Exception e)
               {
e.printStackTrace();
}
%>