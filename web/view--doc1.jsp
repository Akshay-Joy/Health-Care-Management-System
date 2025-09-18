<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><u>Doctor Details</u></h1>
       <table border="1">
<tr><br>
<th>Id</th>
<th>docid</th>
<th>fname</th>
<th>lname</th>
<th>email</th>
<th>gender</th>
<th>qualify</th>
<th>spl</th>
<th>contact</th>
<th>address</th>
<th>password</th>
<th>update</th>
<th>delete</th>
</tr>
<%
try{
    String s=request.getParameter("specialisation");
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    
    Statement st=con.createStatement();
    //st.executeUpdate("insert into admin values('"+name+"','"+pass+"')");
    ResultSet rs=st.executeQuery("select *from doctor where specialisation='"+s+"'");
    //if(name.equals("admin") & pass.equals("admin"))
        while(rs.next())
         {
            int k=rs.getInt("id");
String a=rs.getString("docid"); 
String b=rs.getString("fname"); 
String c=rs.getString("lname");
String d=rs.getString("email");
String e=rs.getString("gender");
String f=rs.getString("qualification");
String g=rs.getString("specialisation"); 
String h=rs.getString("contact");
String i=rs.getString("address");
String j=rs.getString("password");
%>
<tr>
    <td><%=k%></td>
<td><%=a%></td>    
<td><%=b%></td>
<td><%=c%></td>
<td><%=d%></td>
<td><%=e%></td>
<td><%=f%></td>
<td><%=g%></td>
<td><%=h%></td>
<td><%=i%></td>
<td><%=j%></td>
<td>update</td>
<td><a href="doc--del.jsp?id=<%=k%>">Delete</a></td>
</tr>
<%
}
}catch(Exception e)           
         {
e.printStackTrace();
}
    
%><br>
       </table>
    </body><br>
</html>