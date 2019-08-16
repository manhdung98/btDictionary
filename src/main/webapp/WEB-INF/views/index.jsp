<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Demo Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        #body{
            background-color: #000000;
            text-align: center;
        }

        .container{
            background-color: #ffffff;
            border-radius: 45px;
            margin-top: 5%;
            width: 300px;
            height: 420px;
            padding-top: 5%;
            padding-left: 3%;
            padding-right: 3%;
        }
        .error{
            display: none;
            color: red;
        }
        .btn{
            width: 100%;
        }
        h3{
            font-size: 15px;
            font-weight: bold;
        }
    </style>

</head>
<body id="body">
<div class="container">
    <div class="form-login">
        <h3>LOGIN</h3>
    </div>
    <form action="login" method="post">
        <div class="form-group">
            <input id="username" class="form-control" type="text" name="username" placeholder="username">
        </div>

        <div class="form-group">
            <p id="incorrect" class="error">Incorrect Username, try again?</p>
        </div>

        <div class="form-group">
            <input id="password" class="form-control" type="password" name="password" placeholder="password">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>

        <div class="form-group">
            <p>You haven't an account yet?</p>
            <button type="submit" class="btn btn-success">Register</button>
        </div>

    </form>
</div>
</body>
</html>