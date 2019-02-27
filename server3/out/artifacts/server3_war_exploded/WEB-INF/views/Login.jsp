<%--
  Created by IntelliJ IDEA.
  User: HyoKyung
  Date: 2019-02-21
  Time: 오후 2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Login</title>

    <%--<link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/web/WEB-INF/views/Layout.css">--%>
    <meta charset="utf-8">
    <style>
        body {
            margin: 0;
            font-family: serif;
            background-image:url("https://postfiles.pstatic.net/MjAxOTAyMjBfNDQg/MDAxNTUwNjA0NDE0NTY4.5cV99CRyfukzqHvw8yQcyvceOCvcF5VQtxzV_d2ENMMg.6JH0wqQ0ZFibBfYc_udR1yyLqq2g-t-Srs6CZx9VbXAg.JPEG.ok8857/trail02.jpg?type=w966");
            background-position: center;
            background-size: cover;
        }

        .topnav {
            overflow: hidden;
            background-color: #212121;
        }

        .topnav .left a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 26px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav .left a:hover {
            background-color: #8ab8e6;
            color: black;
        }

        .topnav .left a.active {
            background-color: #353535;
            color: #E0FF80;
        }

        .topnav .left a.active:hover {
            background-color: #476ec6;
            color: whitesmoke;
        }

        .topnav .right a {
            float: right;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav .right a:hover {
            background-color: #8ab8e6;
            color: black;
        }


        .header {
            padding: 1px;
            text-align: Center;
            background: #212121;
            color: white;
            font-size: 20px;
        }


        /* Bordered form */
        form {
            border: 0;
        }

        /* Full-width inputs */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4aa5c1;
            color: white;
            border-radius: 5px;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        /* Add a hover effect for buttons */
        button:hover {
            opacity: 0.8;
        }

        /* Extra style for the cancel button (red) */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Add padding to containers */
        .container {
            padding: 40px 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 10px rgba(109, 189, 212, 0.48);
            max-width: 500px;
            margin: 225px auto;
            background-color: #fefefe;
        }

        /* The "Forgot password" text */
        span.pwd {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.pwd {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }

        .footer {
            position: static;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(62, 84, 142, 0.22);
            color: white;
            text-align: center;
        }


    </style>
</head>
<body>
<form action="Welcome?${_csrf.parameterName}=${_csrf.token}" method="post">

    <div class="container">
        <label for="Username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="id" required>

        <label for="Password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="pwd" required>

        <button type="submit"><strong>Login</strong></button>
        <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
        <br><br>
        <button type="button" class="cancelbtn" onclick="location.href = 'Rails%20to%20Trails.html';">Cancel</button>
        <span class="pwd">Forgot <a href="#">password?</a></span>
    </div>


</form>

</body>

<div class="footer">
</div>

</html>