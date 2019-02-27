<%--
  Created by IntelliJ IDEA.
  User: HyoKyung
  Date: 2019-02-21
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML>
<html lang = "en">
<head>
    <title>Rails to Trails</title>
    <link href="Layout.css" rel="stylesheet" type="text/css">
    <meta charset="utf-8">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
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
            background-color: #E0FF80;
            color: black;
        }

        .topnav .left a.active{
            background-color:#353535;
            color: #E0FF80;
        }

        .topnav .left a.active:hover{
            background-color:#E0FF80;
            color: #212121;
        }

        .topnav .right a{
            float: right;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }
        .topnav .right a:hover {
            background-color: #E0FF80;
            color: #212121;
        }




        .header {
            padding: 1px;
            text-align:Center;
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
            border-radius:5px;
            box-shadow: 0px 0px 10px 10px rgba(109, 189, 212, 0.48);
            max-width: 500px;
            margin: 225px auto;
            background-color: #fefefe;
        }

        /* The "Forgot password" text */
        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
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


<body bgcolor="#353535">
<div class="header">
    <h1>Rails to Trails</h1>
</div>
<div class="topnav">
    <div class="left">
        <a class="active" href="/server3_war_exploded/User_index">Home</a>
        <a href="/server3_war_exploded/uTrails">Trails</a>
        <a href="/server3_war_exploded/uTours">Tours</a>
        <a href="/server3_war_exploded/uMedia">Media</a>
    </div>

    <form action ="index">
        <div class="right">
            <a> Hello! ${ids}</a>
            <form action="index">
                <div class="right">
                    <a href="/server3_war_exploded/">Logout</a>
                </div>
            </form>
        </div>
    </form>

</div>

<div class="contents" scroll="auto">
    <p><center>
    <img src="https://i.imgur.com/pcmjc9y.gif" width="1200" height="630"/>
</center>
    </p>
    <br>
    <table border="0" width="1200" align="center">
        <tr>
            <td bgcolor="#353535" align="center" colspan="3">
                <p style="font-size:50px; color:aliceblue; font-family: 'Arial'";>OUR SERVICE</p>
            </td>
        </tr>
        <tr>
            <td align="center"><img src="https://i.imgur.com/uFN49yd.jpg"
                                    onmouseover="this.src='https://i.imgur.com/mNOKsBk.jpg';"
                                    onmouseout = "this.src='https://i.imgur.com/uFN49yd.jpg';"
                                    alt="" width="380" height="450">
            </td>
            <td align="center"><img src="https://i.imgur.com/uFN49yd.jpg"
                                    onmouseover="this.src='https://i.imgur.com/F3hDP67.jpg';"
                                    onmouseout = "this.src='https://i.imgur.com/uFN49yd.jpg';"
                                    alt="" width="380" height="450">
            </td>
            <td align="center"><img src="https://i.imgur.com/uFN49yd.jpg"
                                    onmouseover="this.src='https://i.imgur.com/mDWmLop.jpg';"
                                    onmouseout = "this.src='https://i.imgur.com/uFN49yd.jpg';"
                                    alt="" width="380" height="450">
            </td>


        </tr>
    </table>
</div>


</body>
</html>