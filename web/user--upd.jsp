<%-- 
    Document   : uupdate
    Created on : Apr 15, 2024, 12:20:36 PM
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
        
    <link rel="stylesheet" href="login--styles.css">
    </head>
    <body>
        <form action="conn--user--upd.jsp" method="post">
       
        <%
        String s=request.getParameter("uid");
        String s1=request.getParameter("fname");
        String s2=request.getParameter("lname");
        String s3=request.getParameter("email");
        String s4=request.getParameter("gender");
        String s5=request.getParameter("contactnumber");
        String s6=request.getParameter("address");
        String s7=request.getParameter("password");
        
        %>
        <div class="login-container">
        <table>
            <tr>
                <td>
                    <input type="text" value="<%=s%>" name="uid" /><br>
                    <input type="text" value="<%=s1%>" name="fname" /><br>
                    <input type="text" value="<%=s2%>" name="lname" /><br>
                    <input type="text" value="<%=s3%>" name="email" /><br>
                    <input type="text" value="<%=s4%>" name="gender" /><br>
                    <input type="text" value="<%=s5%>" name="contactnumber" /><br>
                    <input type="text" value="<%=s6%>" name="address" /><br>
                    <input type="text" value="<%=s7%>" name="password" /><br>
                    <button type="submit">Update</button>
                </td>
            </tr>
        </table>
        </form>
        </div>
       
    </body>
</html>