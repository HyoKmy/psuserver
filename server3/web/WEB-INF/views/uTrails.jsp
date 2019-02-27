<!DOCTYPE HTML>
<html lang = "en">
<head>
    <title>Trails</title>
    <!--<link href="Layout.css" rel="stylesheet" type="text/css"> -->

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


        .trailimg {
            text-align: center;
            padding: 20px;
        }
    </style>

</head>
<body bgcolor="#353535">
<div class="header">
    <h1>Trails</h1>
</div>
<div class="topnav">
    <div class="left">
        <a href="/server3_war_exploded/User_index">Home</a>
        <a class="active" href="/server3_war_exploded/uTrails">Trails</a>
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
<br><br>

<div class="contents" >
    <div class="trailimg">
        <h2><font color="#EAEAEA">Lower Trail</font></h2>
        <img src="https://i.imgur.com/SJy0DGf.png" alt="Lower Trail" width="900" height="500">
    </div>
    <center>
        <font color="#EAEAEA";>The Lower Trail runs for almost 17 miles from near Canoe Creek State Park in Blair County northeastward to near Alexandria in Huntingdon County. <br>
            The trail has a rolled crushed limestone surface except for a 2 mile asphalt section through the Borough of Williamsburg and running northeastward.<br>
            The trail is extremely flat with only a slightly noticeable grade when riding from east to west. <br>
            The Lower Trail is open year-round for hiking, biking, horseback riding, bird watching and photography and, in the winter months, <br>
            cross country skiing and snowshoeing (any non-motorized use). <br>
            <strong>This information was obtained from https://www.rttcpa.org/lower.shtml</strong>
        </font>
    </center>
</div>
</body>
</html>