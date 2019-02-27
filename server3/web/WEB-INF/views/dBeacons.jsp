
<html>
<head>
    <meta charset="utf-8">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .medialist {
            color: #E0FF8B;
        }
    </style>
    <style type="text/css">

        ul, li{
            list-style:none;
            text-align:center;
            padding:0;
            margin:0 auto;
            font-size:15pt;

        }

        #medialist{
            width: 800px;
            margin: 0 auto; /*가운데 정렬*/
        }

        #medialist > ul > li:first-child {
            text-align: center;
            font-size:15pt;
            height:60px;
            vertical-align:middle;
            line-height:60px;
        }

        #ulTable {margin-top:10px;}


        #ulTable > li:first-child > ul > li {
            background-color: #282828;
            font-weight:bold;
            text-align:center;
        }

        #ulTable > li > ul {
            clear:both;
            padding:0px auto;
            position:relative;
            min-width:40px;
        }
        #ulTable > li > a > ul > li {
            float:left;
            font-size:15pt;
            border-bottom:1px  solid silver;
            vertical-align: baseline;
        }

        #ulTable > li > a > ul > li:first-child               {width:30%;} /*No 열넓이*/
        #ulTable > li > a > ul > li:first-child +li           {width:70%;} /*제목 열널비*/


        #mediaPaging {
            clear:both;
            margin:0 auto;
            width:220px;
            height:50px;
        }

        #mediaPaging > div {
            float:left;
            width: 30px;
            margin:0 auto;
            text-align:center;
        }

        #liSearchOption {clear:both;}
        #liSearchOption > div {
            margin:0 auto;
            margin-top: 30px;
            width:auto;
            height:100px;
        }

        .left {
            text-align : center;
        }
    </style>


    <title>View Media</title>
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


        /* list css */

        #list_search {
            height:30px;
            padding-top:10px;
        }

        #list_search #list_search1 {
            float:left;
            margin-top:2px;
        }

        #list_search #list_search2 {
            float:left;
            margin-left:300px;
            margin-top:4px;
        }


        #list_search #list_search3 {
            float:left;
            margin-left:5px;
            margin-top:1px;
        }

        #list_search #list_search3 select {
            width:80px;
            height:21px;
            border:solid 1px #cccccc;
        }

        #list_search #list_search4 {
            float:left;
            margin-left:3px;
        }

        #list_search #list_search4 input {
            width:120px;
            height:18px;
            border:solid 1px #cccccc;
        }

        #list_search #list_search5 {
            float:left;
            margin-left:5px;
            margin-top:1px;
        }

        #list_top_title {
            height:20px;
            padding:7px;
            border-top:solid 2px #aaaaaa;
            background-color:#eeeeee;
            margin-bottom:3px;
        }

        #list_top_title li {
            display:inline;
        }

        #list_top_title #list_title1 {
            margin-left:5px;
        }

        #list_top_title #list_title2 {
            margin-left:250px;
        }

        #list_top_title #list_title3 {
            margin-left:290px;
        }

        #list_top_title #list_title4 {
            margin-left:32px;
        }

        #list_top_title #list_title5 {
            margin-left:26px;
        }

        #list_content {
            height:380px;
        }

        #list_item {
            height:18px;
            margin-top:2px;
            padding:6px;
            border-bottom:solid 1px #eeeeee;
        }

        #list_item #list_item1{
            float:left;
            width:40px;
            text-align:center;
        }

        #list_item #list_item2{
            float:left;
            width:560px;
        }

        #list_item #list_item3{
            float:left;
            width:65px;
            text-align:center;
        }

        #list_item #list_item4{
            float:left;
            width:80px;
            text-align:center;
        }

        #list_item #list_item5{
            float:left;
            width:40px;
            text-align:center;
        }

        #page_button {
            margin-top:20px;
        }

        #page_num {
            float:left;
            width:80%;
            margin-top:10px;
            text-align:center;
        }

        #button {
            float:left;
            width:18%;
            text-align:right;
        }
    </style>
</head>

<body bgcolor="#353535">
<div class="header">
    <h1>Developer Choices</h1>
</div>
<div class="topnav">
    <div class="left">
        <a href="/server3_war_exploded/Admin_index">Home</a>
        <a class="active" href="/server3_war_exploded/dBeacons">Beacons</a>
        <a href="/server3_war_exploded/dTrails">Trails</a>
        <a href="/server3_war_exploded/dTours">Tours</a>
        <a href="/server3_war_exploded/dTourTypes">Tour Types</a>
        <a href="/server3_war_exploded/mediaS">Media</a>
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

<style>


    .add_container {
        padding: 20px 30px;
        border-radius:5px;
        max-width: 600px;
        margin: 20px auto;
        background-color: #c6efba;
        Color: Black;
        font-size: 20px;
        text-align: center;
        box-shadow: 0px 0px 5px 5px rgba(0, 51, 35, 0.72);
    }
    .drop_container {
        padding: 20px 30px;
        border-radius:5px;
        max-width: 600px;
        margin: 20px auto;
        background-color: #db3f3f;
        Color: White;
        font-size: 20px;
        text-align: center;
        box-shadow: 0px 0px 5px 5px rgba(74, 0, 0, 0.71);
    }
    .option_container {
        padding: 30px 50px;
        border-radius:10px;
        max-width: 700px;
        margin: 200px auto;
        background-color: #c5ffff;
        Color: White;
        font-size: 20px;
        text-align: center;
    }
    input[type=text] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button.add {
        background-color: #034b06;
        color: white;
        border-radius: 5px;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 25%;
    }
    button.drop {
        background-color: #860000;
        color: white;
        border-radius: 5px;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 25%;
    }

    button.redirectadd {
        background-color: #269157;
        color: white;
        border-radius: 5px;
        padding: 30px 20px;
        margin: 10px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        font-size: 30px;
        box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.72);
    }
    button.redirectdrop {
        background-color: #902929;
        color: white;
        border-radius: 5px;
        padding: 30px 20px;
        margin: 10px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        font-size: 30px;
        box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.72);
    }
    button.back {
        background-color: #1c3cc4;
        color: white;
        border-radius: 5px;
        padding: 10px 0px;
        margin: 10px 0;
        border: none;
        cursor: pointer;
        width: 40%;
        font-size: 15px;
        box-shadow: 0px 0px 5px 5px rgba(0, 0, 0, 0.72);
    }
    button:hover {
        opacity: 0.8;
    }
</style>
<div class="add_container">

    <input type="text" placeholder="Enter Latitude" name="latitiude" required>
    <input type="text" placeholder="Enter Longitude" name="longitude" required>
    <input type="text" placeholder="Enter Title" name="title" required>
    <input type="text" placeholder="Enter Major" name="major" required>
    <input type="text" placeholder="Enter Minor" name="minor" required>
    <input type="text" placeholder="Enter Media id's" name="media_ids" required>
    <input type="text" placeholder="Enter Description" name="description" required>
    <input type="text" placeholder="Enter Photo id" name="trailhead_photo_id" required>
    <button type="button" class="add" onclick="location.href = 'Rails%20to%20Trails.html';">Submit</button>
</div>



</body>
</html>
