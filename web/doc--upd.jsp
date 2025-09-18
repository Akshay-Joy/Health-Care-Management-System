<%-- 
    Document   : uupdate
    Created on : Apr 15, 2024, 12:20:36 PM
    Author     : VAMSI
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
        <form action="conn--doc--upd.jsp" method="post">
       
        <%
        String s=request.getParameter("id");
        String s1=request.getParameter("fname");
        String s2=request.getParameter("lname");
        String s3=request.getParameter("email");
        String s4=request.getParameter("gender");
        String s5=request.getParameter("qualification");
        String s6=request.getParameter("specialisation");
        String s7=request.getParameter("contact");
        String s8=request.getParameter("address");
        String s9=request.getParameter("password");
        
        %>
        <div class="login-container">
        <table>
            <tr>
                <td>
                    <input type="text" value="<%=s%>" name="id" /><br>
                    <input type="text" value="<%=s1%>" name="fname" /><br>
                    <input type="text" value="<%=s2%>" name="lname" /><br>
                    <input type="text" value="<%=s3%>" name="email" /><br>
                    <input type="text" value="<%=s4%>" name="gender" /><br>
                    <input type="text" value="<%=s5%>" name="qualification" /><br>
                    <input type="text" value="<%=s6%>" name="specialisation" /><br>
                    <input type="text" value="<%=s7%>" name="contact" /><br>
                    <input type="text" value="<%=s8%>" name="address" /><br>
                    <input type="text" value="<%=s9%>" name="password" /><br>
                    <button type="submit">Update</button>
                </td>
            </tr>
        </table>
        </form>
        </div>
       
    </body>
</html>