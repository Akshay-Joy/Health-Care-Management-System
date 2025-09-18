<%-- 
    Document   : app
    Created on : Apr 1, 2024, 3:15:59 PM
    Author     : akshayjoy
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
            background-image: url("images/app.jpg");
            background-size: 1600px;
            background-position-y: -160px;
            background-position-x: -70px;         
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
        <div class="login-container">
        <h1>Appointment</h1>
                 
            <form action="conn--app.jsp" method="post">
            <table>
                 
                <tr>
                <td>Doc Name</td><td>
    <select name="docname" id="docname">
        
  <option value="select">select</option>
  <option value="Arjun">Arjun</option>
  <option value="Kishore">Kishore</option>
  <option value="Strange">Strange</option>
  <option value="Mani">Mani</option>
</select>
                </td></tr>
    
                <tr>
                    <td>Specialisation:</td><td>
  <select name="specialisation" id="Specialisation">
            <option value="select">select</option>
            <option value="Cardiologist">Cardiologist</option>
            <option value="Neurologist">Neurologist</option>
            <option value="Orthologist">Orthologist</option>
            <option value="Pulmonologist">Pulmonologist</option>
   </select>   
            </td></tr>
                
                <tr><td>Date</td>
                    <td><input type="date" id="start" name="date" />
                    </td></tr>
                
                <tr>
    <td>Disease:</td><td>
    <input type="text" id="disease" name="disease" placeholder="Enter Disease"required>
    </td></tr>
                
                <tr>
    <td>Username</td><td>
    <input type="email" id="email" name="email"  placeholder="Enter E-mail" required>
    </td></tr>
                
                <tr><td>
                                       
                    </td></tr>
                               
            </table>
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
</form>
        </div>
        <button onclick="history.back()">Go Back</button>
        </center>
       
    </body>
</html>
    