<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Care System</title>
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
        <h1>Patient Details</h1>
        <table border="1"> 
            <tr>
                <th>uid</th>
                <th>fname </th>
                <th>lname</th>
                <th>email</th>
                <th>gender</th>
                <th>contactnumber</th>
                <th>address</th>
                <th>password</th>
                <th>UPDATE</th>
                <th>DELETE</th>
                
            </tr>
 <%
  try{
      Class.forName("com.mysql.jdbc.Driver");
    
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    
    Statement st=con.createStatement();   
          ResultSet rs=st.executeQuery("select * from user");
          while (rs.next()){
              int uid = rs.getInt("uid");
              String fname = rs.getString("fname");
               String lname = rs.getString("lname");
               String email = rs.getString("email");
                String gender = rs.getString("gender");
                String contactnumber = rs.getString("contactnumber");
                 String address = rs.getString("address");
                  String password = rs.getString("password");
                 
               
              
          
          
         %>
              <tr>
    <td><%=uid%></td>               
    <td><%=fname%></td>
    <td><%=lname%></td>
    <td><%=email%></td>
    <td><%=gender%></td>
    <td><%=contactnumber%></td>
    <td><%=address%></td>
    <td><%=password%></td>
    <td><a href="user--upd.jsp?uid=<%=uid%>&fname=<%=fname%>&lname=<%=lname%>&email=<%=email%>&gender=<%=gender%>&contactnumber=<%=contactnumber%>&address=<%=address%>&password=<%=password%>">Update</a></td>
   <td><a href="user--del.jsp?uid=<%=uid%>">Delete</a></td>
    
        </tr>
        <%
        }
        
         
     } catch (Exception e) {
        e.printStackTrace();
    }       
      %> 
     
     
     </table>
     <button onclick="history.back()">Go Back</button>
         
    </center>
    </body>
</html>