<%-- 
    Document   : index
    Created on : Mar 22, 2024, 3:32:55 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="login--styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor login Page</title>
        <style>
        body{
            background-image: url("images/doctor.jpg");
            background-size: 950px;
            width: 100%;
            
        }
    </style>
        
    </head>
    <script type="text/javascript">
    function validate()
    {
        var docid=document.form.docid.value;
        var email=document.form.email.value;
        var qualification=document.form.qualification.value;
        var password=document.form.password.value;
        if(docid==0)
            {
                alert("please enter docid");
                document.form.docid.focus();
                return false;
                    }
        if(email==null)
            {
                alert("please enter username");
                document.form.email.focus();
                return false;
                    }
        if(qualification==n)
                    {
                alert("please enter qualification");
                document.form.qualification.focus();
                return false;
                    }
         if(password==null)
                    {
                        alert("please enter password");
                        document.form.password.focus();
                        return false;
                    }
                           
            }
</script>
    <body>
        <div class="login-container">
    <center>       
    
        <h1>Doctor login page</h1>
        <form action="conn--doc--log.jsp" method="post" target="_self" onsubmit="return validate()" name="form">
        <table>
            <tr>
                <td>
                    Doctor Id:</td><td>
                    <input type="text" placeholder="Enter Doc Id" name="docid">
                </td>
            </tr>
            <tr>
                <td>
                    Email:</td><td>
                    <input type="email" placeholder="Enter Email" name="email">
                </td>
            </tr>
            <tr>
                <td>Qualification:</td><td>
    <select name="qualification" id="qualification">
        
  <option value="none">none</option>
  <option value="MBBS">MBBS</option>
  <option value="MD">MD</option>
  <option value="MS">MS</option>
</select>
                </td></tr>
             <tr>
                <td>
                    Password:</td><td>
                    <input type="password" placeholder="Enter Password" name="password"><br><br>
                </td>
            </tr>
        </table>
                    
                    <button type="submit">Log In</button>
                    <button><a href="index.jsp">Cancel</a></button><br><br>
                    <button><a href="doc--reg.jsp">REGISTER</a></button>
                
        
        </form>
    </center>
        </div>
    </body>
</html>