<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String ratings=request.getParameter("rating");
String review=request.getParameter("review");
%>
<%
      try{
           Class.forName("com.mysql.jdbc.Driver");
           
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    
     PreparedStatement ps=con.prepareStatement("insert into rr values(?,?)");
     ps.setString(1,ratings);
     ps.setString(2,review);
     ps.executeUpdate();
     response.sendRedirect("Rlogin.jsp?msg=R.R Added Successfully");
     
         } catch(Exception e)
                                 {
             e.printStackTrace();
}
%>