<%-- 
    Document   : reg
    Created on : Mar 26, 2024, 4:47:21 PM
    Author     : akshayjoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REG Page</title>
        <link rel="stylesheet" href="login--styles.css">
        <style>
            body{
            background-image: url("images/user--reg.jpg");
            background-size: 1500px;
            width: 100%;
            background-position-x: -155px;
            background-position-y:-360px;
            
        }
        </style>
    </head>
    <script type="text/javascript">
    function validate()
    {
        var fname=document.form.fname.value;
        var lname=document.form.lname.value;
        var email=document.form.email.value;
        var ok=document.form.ok.value;
        var contact=document.form.contact.value;
        var address=document.form.address.value;
        var password=document.form.password.value;
        if(fname==0)
            {
                alert("please enter fname");
                document.form.fname.focus();
                return false;
                    }
         if(lname==0)
            {
                alert("please enter lname");
                document.form.lname.focus();
                return false;
                    }
        if(email==0)
            {
                alert("please enter username");
                document.form.email.focus();
                return false;
                    }
        if(ok==0)
            {
                alert("please select Gender");
                document.form.ok.focus();
                return false;
                    }            
        if(contact==0)
                    {
                alert("please enter contact");
                document.form.contact.focus();
                return false;
                    }
         if(address==0)
                    {
                alert("please enter address");
                document.form.address.focus();
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
        
        <h1> User Registration Form</h1>
        <form action="aconn--reg.jsp">
        <table>
            <tr>
                <td>
                    First Name:</td><td>
                    <input type="text" name="fname" placeholder="Enter First name" required>
                </td>
             
            </tr>
            <tr>
                <td>
                    Last Name:</td><td>
                    <input type="text" name="lname" placeholder="Enter Last Name" required>
                </td>
             
            </tr>
            <tr>
                <td>
                    E-Mail:</td><td>
                    <input type="email" name="email" placeholder="Enter Email" required>
                </td>
             
            </tr>
            <tr>
                <td>
                    Gender:</td><td>
                    <input type="radio" name="ok" value="Male" >Male
                    <input type="radio" name="ok" value="Female" >Female
                  
                </td>
             
            </tr>
            <tr>
                <td>
                    Contact Number:</td><td>
                    <input type="text" name="contact" placeholder="Enter Contact Number" required>
                </td>
             
            </tr>
            <tr>
                <td>
                    Address:</td><td>
                    <input type="text" name="address" placeholder="Enter Address" required>
                </td>
             
            </tr>
            
            <tr><td>
                    New Password:</td><td>
                    <input type="password" name="password" placeholder="Enter New Password" required>
                </td>
                </tr>
               
       
        </table>
            <button type="submit">Register</button>
                    <button type="reset">Reset</button>  
        </form>
    </center>
        </div>
    </body>
</html>
