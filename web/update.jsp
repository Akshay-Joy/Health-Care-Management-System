<%-- 
    Document   : update
    Created on : Apr 16, 2024, 11:46:05 AM
    Author     : akshayjoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%
        String uid=request.getParameter("uid");
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
        String phn=request.getParameter("phn");
        String address=request.getParameter("address");
        String password=request.getParameter("password");
        %>
        <form action="updateconn.jsp" method="post">
            <table>
                <tr>
                    <td>
                        <input type="text" value="<%=uid%>" name="uid">
                        <br>
                        <input type="text" value="<%=fname%>" name="uid">
                        <br>
                        <input type="text" value="<%=lname%>" name="uid">
                        <br>
                        <input type="text" value="<%=email%>" name="uid">
                        <br>
                        <input type="text" value="<%=gender%>" name="uid">
                        <br>
                        <input type="text" value="<%=phn%>" name="uid">
                        <br>
                        <input type="text" value="<%=address%>" name="uid">
                        <br>
                        <input type="text" value="<%=password%>" name="uid">
                        <br>                  
                        <input type="submit" value="update" name="update">
                        <br>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>