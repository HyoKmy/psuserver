<%--
  Created by IntelliJ IDEA.
  User: HyoKyung
  Date: 2019-02-21
  Time: 오후 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Update Page</title>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }
    table.type05 {
        border-collapse: separate;
        border-spacing: 1px;
        text-align: left;
        line-height: 1.5;
        border-top: 1px solid #000000;
        margin: 20px 10px;
    }
    table.type05 th {
        width: 200px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #000000;
        background: #E0FF8B;
        text-align: center;
    }
    table.type05 td {
        width: 500px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #000000;
        background: #eeeeee;
    }
</style>

<style>

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
<center>
    <div class="header">
        <h1>Developer Choices</h1>
    </div>
    <div class="topnav">
        <div class="left">
            <a href="/server3_war_exploded/Admin_index">Home</a>
            <a href="/server3_war_exploded/dBeacons">Beacons</a>
            <a href="/server3_war_exploded/dTrails">Trails</a>
            <a href="/server3_war_exploded/dTours">Tours</a>
            <a href="/server3_war_exploded/dTourTypes">Tour Types</a>
            <a class="active" href="/server3_war_exploded/mediaS">Media</a>
            <a href="/server3_war_exploded/dLocations">Locations</a>
            <a href="/server3_war_exploded/dMediaType">Media Type</a>
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
    <%String id = (String) request.getAttribute("sendID");%>

    <div class="contents"  style="margin:100px 100px 100px 100px">
    <form name="fileForm" action="/server3_war_exploded/mediaU/<%=id%>" method="post" enctype="multipart/form-data">
        <table class="type05">
            <tr>
                <th scope="row">title</th>
                <td><input id="titleU" type="text" name="titleU" style="width:410px" /></td>
            </tr>
            <tr>
                <th scope="row">description</th>
                <td><textarea id="descriptionU" name="descriptionU" cols="72" rows="10"></textarea></td>
            </tr>
        </table>
        <center><button>SUBMIT</button></center>
    </form>
    </div>
</center>
</body>
</html>







