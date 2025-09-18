<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Care Hub</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .logo {
            text-align: center;
            font-size: 2rem;
            color: #007bff;
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #007bff;
            color: #fff;
        }

        .button.home {
            background-color: #f0f0f0;
        }

        .button.admin {
            background-color: #dc3545;
        }

        .button.user {
            background-color: #28a745;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">Health Care Hub</div>
        <div class="button-container">
            <button class="button home">Home</button>
            <button class="button admin">Admin</button>
            <button class="button user">User</button>
        </div>
    </div>
</body>
</html>
