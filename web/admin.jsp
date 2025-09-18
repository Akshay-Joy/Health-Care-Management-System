<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login--styles.css">
    <title>Login Page</title>
    <style>
        body {
    background-image: url("images/admin.jpg");
    background-size: 1250px;
    background-position-x: 150px;
    background-position-y: -180px;
    width: 100%;
    
}

    </style>
</head>
<script type="text/javascript">
    function validate()
    {
        var admin=document.form.admin.value;
        var password=document.form.password.value;
        if(admin==0)
            {
                alert("please enter username");
                document.form.admin.focus();
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
        
        <h1>Admin Login</h1>
        <form action="conn--admin.jsp" method="post" target="_self" onsubmit="return validate()" name="form">
            <input type="text" name="admin" placeholder="Username" >
            <input type="password" name="password" placeholder="Password" ><br><br>
            <button type="submit">Log In</button>
            <button><a href="index.jsp">Cancel</button><br><br>  
        </form>
    </div>
</body>
</html>
