<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login--styles.css">
        <title>JSP Page</title>
        <style>
        body {
            background-color: #5BBCFF;
            font-family: Arial, sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
        button {
    background-color: #007bff;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0056b3;
}
    </style>
    </head>
    <body>
    <center>
        <h1>Responses</h1>
    
       <table border="1">
<tr>
<th>Uid</th>
<th>Doctor_name</th>
<th>Date</th>
<th>Disease</th>
<th>Description</th>

</tr>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    
    Statement st=con.createStatement();
    //st.executeUpdate("insert into admin values('"+name+"','"+pass+"')");
    ResultSet rs=st.executeQuery("select * from response");
    //if(name.equals("admin") & pass.equals("admin"))
        while(rs.next())
         {
            int h=rs.getInt("uid");
String a=rs.getString("docname"); 
String b=rs.getString("date");
String c=rs.getString("disease");
String d=rs.getString("description");
 
%>
<tr>
    <td><%=h%></td>
<td><%=a%></td>    
<td><%=b%></td>
<td><%=c%></td>
<td><%=d%></td>

</tr>
<%
}
}catch(Exception e)           
         {
e.printStackTrace();
}
    
%>
       </table><br><br>
       <button onclick="history.back()">Go Back</button>
    </center>
    </body>
</html>