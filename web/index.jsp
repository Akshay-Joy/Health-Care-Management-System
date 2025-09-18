<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Care System</title>
    <style>
        /* Reset default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Header styles */
        header {
            background-color: #0074D9;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }

        /* Navigation styles */
        nav {
            display: flex;
            justify-content: center;
            background-color: #333;
            padding: 0.5rem;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 1rem;
        }

        /* Main content styles */
        .main-content {
            text-align: center;
            padding: 2rem;
            color: #fff;
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        p {
            font-size: 1.5rem;
            color: #0C0C0C;
            font-weight: bold;
        }
        body{
            background-image:url("images/home.jpg");
            background-size:cover;
            width:100%;
          
        }

        /* Button styles */
        .btn {
            background-color: #008DDA;
            color: #fff;
            padding: 0.5rem 1rem;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }
        .marquee {
            width: 100%;
            overflow: hidden;
            white-space: inherit;
            position: relative;
        }

        .marquee span p {
            display: inline-block;
            padding-right: 20px; /* Adjust spacing between items */
            animation: marquee 15s linear infinite;
        }
        

        .marquee-content {
            flex-shrink: 0;
            display: run-in;
            justify-content: space-around;
            min-width: 100%;
            animation: scroll-left 10s linear infinite;
        }

        @keyframes scroll-left {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Health Care System</h1>
        <p>Your Health Partner</p>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <button class="btn"><a href="admin.jsp">Admin</a></button>
        <a href="doc--log.jsp">Doctor</a>
        <a href="userlogin.jsp">User</a>
    </nav>
    <div class="marquee">
    <div class="marquee-container"> 
    <div class="marquee-content">    
        <span><p>Quality health care services for all</p></span>
        <span><p>Expert doctors and nurses</p></span>
        <!-- Add more health care messages here -->
    </div>
    </div>
    </div>    
    
</body>
</html>
