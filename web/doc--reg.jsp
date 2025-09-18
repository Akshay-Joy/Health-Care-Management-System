<%-- 
    Document   : register
    Created on : Mar 26, 2024, 4:07:03 PM
    Author     : VAMSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="login--styles.css">
        <style>
        body{
            background-image: url("images/doc--reg.jpg");
            background-size: 1550px;
            width: 100%;
            background-position-x: -14px;
            background-position-y: -55px;
            
        }
        login-container {
    background-color: #B3C8CF;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
}
        
    </style>
    </head>
    <script type="text/javascript">
    function validate()
    {
        var docid=document.form.docid.value;
        var fname=document.form.fname.value;
        var lname=document.form.lname.value;
        var email=document.form.email.value;
        var ok=document.form.ok.value;
        var qualification=document.form.qualification.value;
        var specialisation=document.form.specialisation.value;
        var contact=document.form.contact.value;
        var address=document.form.address.value;
        var password=document.form.password.value;
        if(docid==null)
            {
                alert("please enter docid");
                document.form.docid.focus();
                return false;
                    }
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
         if(qualification==0)
            {
                alert("please select qualification");
                document.form.qualification.focus();
                return false;
                    } 
        if(specialisation==0)
            {
                alert("please select specialisation");
                document.form.specialisation.focus();
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
    
        
            <h1> Doctor Registration Form</h1>
            <form action="conn--doc--reg.jsp" method="post" onsubmit="return validate()" name="form">
            <table>
                <tr>
                <td>Doctor Id:</td><td>
    <input type="text" id="docid" name="docid" placeholder="Enter Doc Id">
                </td></tr>
                <tr>
                <td>First Name:</td><td>
    <input type="text" id="fname" name="fname" placeholder="Enter First name" >
                </td></tr><tr>
                    <td>Last Name:</td><td>
    <input type="text" id="lname" name="lname" placeholder="Enter Last Name" >
                    </td></tr><tr>
    <td>Email:</td><td>
    <input type="email" id="email" name="email" placeholder="Enter Email" >
    </td></tr>
                <tr>
                <td>
                    Gender:</td><td>
                    <input type="radio" name="ok" value="Male" >Male
                    <input type="radio" name="ok" value="Female" >Female
                  
                </td>
             
            </tr>
                <tr>
                <td>Qualification:</td><td>
    <select name="qualification" id="qualification">
        
  <option value="select">select</option>
  <option value="MBBS">MBBS</option>
  <option value="MD">MD</option>
  <option value="MS">MS</option>
</select>
                </td></tr>
                <tr>
                    <td>Specialisation:</td><td>
  <select name="specialisation" id="Specialisation">
            <option value="none">none</option>
            <option value="Cardiologist">Cardiologist</option>
            <option value="Neurologist">Neurologist</option>
            <option value="Orthologist">Orthologist</option>
            <option value="Pulmonologist">Pulmonologist</option>
   </select>   
            </td></tr>
                <tr>
    <td>Contact Number:</td><td>
    <input type="tel" id="contact" name="contact" placeholder="Enter Contact Number">
    </td></tr><tr>
    <td>Address:</td><td>
    <input type="address" id="address" name="address"  placeholder="Enter Address" >
    </td></tr><tr>
    <td>Password:</td><td>
    <input type="password" id="password" name="password" placeholder="Enter New Password">
    </td></tr>
                
                    
                
                    
            
            </table>
                <button type="submit">Register</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset">Reset</button>
</form>
        </center>
        </div>
    </body>
</html>