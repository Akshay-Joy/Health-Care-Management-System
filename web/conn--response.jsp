<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String h=request.getParameter("uid");
     String s=request.getParameter("docname");
     String s1=request.getParameter("date");
     String s2=request.getParameter("disease");
      String s3=request.getParameter("description");
      
           
%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    Statement st = con.createStatement();
        st.executeUpdate("insert into response(uid,docname,date,disease,description) values ('"+h+"','"+s+"','"+s1+"','"+s2+"',"
                + "'"+s3+"')");
   
    response.sendRedirect("doc--home.jsp?msg=Response successful");

}catch(Exception e)
               {
e.printStackTrace();
}
%>