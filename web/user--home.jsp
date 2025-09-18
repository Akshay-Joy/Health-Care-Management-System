<%-- 
    Document   : user--log--success
    Created on : Mar 28, 2024, 2:32:03 PM
    Author     : akshayjoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login--styles.css">
        <title>User Home</title>
        <style>
        body {
            background-image: url("images/user--home.jpg");
            background-size: 1500px 1100px;
            background-position-y: -200px;
            width:100%;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 50px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
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
.h{
   text-align: center; 
}
        
    </style>
    </head>
    <body>
    <center>
        <h1>User Home</h1>
    </center>
   
    <center>   
        <a href="index.jsp" class="btn">HOME</a>
        <a href="view--doc.jsp" class="btn">View Doctors</a>
        <a href="app.jsp" class="btn">Appointment</a>
        <a href="user--response.jsp" class="btn">Response</a>
        
    </center>
    <button onclick="history.back()">Go Back</button>

    </body>
</html>
