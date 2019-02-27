<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Media Page</title>
    <style>
        table.type05 {
            border-collapse: separate;
            border-spacing: 1px;
            text-align: left;
            line-height: 1.5;
            border-top: 1px solid #000000;
            margin: 20px 10px;
        }
        table.type05 th {
            width: 300px;
            padding: 10px;
            font-weight: bold;
            vertical-align: top;
            border-bottom: 1px solid #000000;
            background: #E0FF8B;
            text-align: center;
        }
        table.type05 td {
            width: 900px;
            padding: 10px;
            vertical-align: top;
            border-bottom: 1px solid #000000;
            background: #eeeeee;
        }
    </style>

    <style>
        body {
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

        button {
            background-color: #126978;
            color: white;
            border-radius: 5px;
            padding: 0px 0px;
            margin: 0px 0;
            border: none;
            cursor: pointer;
            width: 60px;
            height: 30px;
        }

        /* Add a hover effect for buttons */
        button:hover {
            opacity: 0.8;
        }


    </style>

</head>
<body bgcolor="#353535">
<div class="header">
    <h1>Developer Choices</h1>
</div>
<div class="topnav">
    <div class="left">
        <a href="/server3_war_exploded/dBeacons">Beacons</a>
        <a href="/server3_war_exploded/dTrails">Trails</a>
        <a href="/server3_war_exploded/dTours">Tours</a>
        <a href="/server3_war_exploded/dTourTypes">Tour Types</a>
        <a class="active" href="/server3_war_exploded/mediaS">Media</a>
        <a href="/server3_war_exploded/dLocations">Locations</a>
        <a href="/server3_war_exploded/dMediaType">Media Type</a>
    </div>


    <div class="right">
        <a> Hello! ${ids}</a>

        <form action="index">
            <div class="right">
                <a href="/server3_war_exploded/">Logout</a>
            </div>
        </form>
    </div>
</div>

<div class="contents"  style="margin:80px 80px 80px 80px">
    <center>
        <form name="fileForm" action="mediaL?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
            <table class="type05">
                <tr>
                    <th>title</th>
                    <td> <input id="titleL" type="text" name="titleL" /> </td>
                </tr>

                <tr>
                    <th>select file</th>
                    <td><input type="file" name="files" value="Browse" /> </td>
                </tr>

                <tr>
                    <th>description</th>
                    <td><input id="descriptionL" type="text" name="descriptionL" /></td>
                </tr>
            </table>
            <button>UPLOAD</button>
        </form>
    </center>
</div>
</body>
</html>