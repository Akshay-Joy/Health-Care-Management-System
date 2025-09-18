<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login--styles.css">
    <title>Login Page</title>
    <style>
        body{
            background-image: url("images/user.jpg");
            background-size: 1250px;
            width: 100%;
        }
        
    </style>
</head>
<script type="text/javascript">
    function validate()
    {
        var email=document.form.email.value;
        var password=document.form.password.value;
        if(email==0)
            {
                alert("please enter username");
                document.form.email.focus();
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
        <h1>User Login</h1>
        <form action="conn--user.jsp" method="post" target="_self" onsubmit="return validate()" name="form">
            <input type="email" name="email" placeholder="E-mail" >
            <input type="password" name="password" placeholder="Password" ><br><br>         
            <button type="submit">Log In</button>
            <button><a href="index.jsp">Cancel</button><br><br>             
        </form>
        <p>Don't have account? <a href="reg.jsp">Register</p>
    </div>
</body>
</html>
