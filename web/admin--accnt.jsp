<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home Page</title>
    <style>
        body {
            background-image: url("images/admin--home.jpg");
            background-size: 1500px 1100px;
            background-position-y: -125px;
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
    </style>
</head>
<body>
    <div class="container">
        <h1><u>E-HEALTH CARE SYSTEM</u></h1>
        <h1>Admin Home Page</h1>
        <a href="index.jsp" class="btn">Home</a>
        <a href="view--doc.jsp" class="btn">View Doctors</a>
        <a href="view--user.jsp" class="btn">View Patients</a>
    </div>
</body>
</html>
