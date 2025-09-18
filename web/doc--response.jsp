<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response Page</title>
        <link rel="stylesheet" href="login--styles.css">
        <style>
            body {
            background-image: url("images/res.jpg");
            background-size: 1500px 1100px;
            background-position-y: -90px;
            width:100%;
        </style>
    </head>
    <body>
        <center><h1><u>Health Care System</u></h1>
            <div class="login-container">
            <h1> Response Page </h1>
            <form action="conn--response.jsp" method="post">
            <table>
                <tr>
                <td>User Id:</td><td>
    <input type="text" id="uid" name="uid" placeholder="Enter  User-Id"required>
                </td></tr>
                <tr>
                <td>Doctor Name:</td><td>
    <input type="text" id="docname" name="docname" placeholder="Enter Doctor name" required>
                </td></tr><tr>
                    
                    <tr><td>Date</td>
                    <td><input type="date" id="start" name="date" />
                    </td></tr>
                    
                    <tr>
                <td>Disease:</td><td>
    <input type="text" id="disease" name="disease" placeholder="Enter  Disease"required>
                </td></tr>
                                   
                
                <tr>
                <td>Description:</td><td>
                    <textarea  id="description" name="description"  rows="4" placeholder="Enter  Description"required></textarea>
                </td></tr>
               
            </table>
                <button type="submit">Respond</button>
                <button type="reset">Reset</button>  <br><br>     
</form>
            <button onclick="history.back()">Go Back</button>

            </div>
            
        </center>
       
    </body>
</html>
