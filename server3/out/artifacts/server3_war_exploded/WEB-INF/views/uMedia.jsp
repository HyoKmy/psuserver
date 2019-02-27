<!DOCTYPE HTML>
<html lang = "en">
<head>
    <title>Media</title>
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

        .contents {

        }



    </style>

</head>
<body bgcolor="#353535">
<div class="header">
    <h1>Media</h1>
</div>
<div class="topnav">
    <div class="left">
        <a href="/server3_war_exploded/User_index">Home</a>
        <a href="/server3_war_exploded/uTrails">Trails</a>
        <a href="/server3_war_exploded/uTours">Tours</a>
        <a class="active" href="/server3_war_exploded/uMedia">Media</a>
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

<%--<div class="contents" >--%>
    <%--<h2><font color="#EAEAEA">MUSEUM</font></h2>--%>

    <%--<table width="900" border="0">--%>
        <%--<tr>--%>
            <%--<td width="300" height="300">--%>
                <%--<img src="https://i.imgur.com/83697AO.jpg" width="250" height="280">--%>
            <%--</td>--%>
            <%--<td width ="300" height="300">--%>
                <%--<img src="https://i.imgur.com/nfkttTA.png" width="250" height="280">--%>
            <%--</td>--%>
            <%--<td width ="300" height="300">--%>
                <%--<img src="https://i.imgur.com/csXc8Uw.jpg" width="250" height="280">--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td width="300" height="100" >--%>
                <%--<font color="#EAEAEA"> Railroad Museum of Pennsylvania </font>--%>
            <%--</td>--%>
            <%--<td  width="300" height="100">--%>
                <%--<font color="#EAEAEA">&nbsp;&nbsp; The Lemon House </font>--%>
            <%--</td>--%>
            <%--<td width="300" height="100">--%>
                <%--<font color="#EAEAEA">&nbsp;&nbsp;&nbsp; Allegheny Portage RailRoad </font>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>

<%--</div>--%>
<div class="contents" scroll="auto">
    <p><center>
    <h2><font color="#EAEAEA">MUSEUM</font></h2>
</center>
    </p>
    <br>
    <table width="900" border="0" align="center">
        <tr>
            <td width="300" height="300">
                <img src="https://i.imgur.com/83697AO.jpg" width="250" height="280">
            </td>
            <td width ="300" height="300">
                <img src="https://i.imgur.com/nfkttTA.png" width="250" height="280">
            </td>
            <td width ="300" height="300">
                <img src="https://i.imgur.com/csXc8Uw.jpg" width="250" height="280">
            </td>
        </tr>
        <tr>
            <td width="300" height="100" >
                <font color="#EAEAEA"> Railroad Museum of Pennsylvania </font>
            </td>
            <td  width="300" height="100">
                <font color="#EAEAEA">&nbsp;&nbsp; The Lemon House </font>
            </td>
            <td width="300" height="100">
                <font color="#EAEAEA">&nbsp;&nbsp;&nbsp; Allegheny Portage RailRoad </font>
            </td>
        </tr>
    </table>

</div>

</body>
</html>