<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Tours</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="site.webmanifest">
    <link rel="apple-touch-icon" href="icon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- <link rel="stylesheet" href="../css/normalize.css"> -->
    <!-- <link rel="stylesheet" href="../css/main.css"> -->
    <!-- <link rel="stylesheet" href="../css/layout.css" type="text/css"> -->
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans:400,600,700');
        @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
        body {
            margin:0;
            font-family: 'Open Sans',sans-serif;
        }
        .main_container{
            width: 100%;
            padding: 30px;
            background: #282828;
        }


        .header {
            padding: 1px;
            text-align:Center;
            background: #212121;
            color: white;
            font-size: 20px;
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

        .description{
            text-align: center;
            width: 900px;

        }

        .relimage{
            float: center;
            vertical-align:center;
            width: 900px;
            padding: 100px 100px;

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


        /*New CSS - 02/17/2019 */

        /* *,*::before,*::after{margin:0;padding:0;box-sizing:border-box;}html,body{height:100vh;}body{display:flex;align-items:center;justify-content:center;padding:40px;font:14px/1.5 'Open Sans',sans-serif;color:#345;background:#f0f2f4;} */

        p:not(:last-child) {
            margin: 0 0 20px;
        }

        .main {
            color:#EAEAEA;
            width: auto;
            padding: 100px;
            /* border: 1px solid rgba(0,0,0,.2);
             background: #282828;
             box-shadow: 0 1px 3px rgba(0,0,0,.1); */
        }

        .main .img {
            display: block;
            /* float: left; */
        }
        section {
            display: none;
            padding: 20px 0 0;
            border-top: 1px solid #abc;
        }

        input {
            display: none;
        }

        label {
            display: inline-block;
            margin: 0 0 0px;
            padding: 15px 25px;
            font-weight: 600;
            text-align: center;
            color:#EAEAEA;
            border: 1px solid transparent;
        }

        label:before {
            font-family: fontawesome;
            font-weight: normal;
            margin-right: 10px;
        }

        label[for*='1']:before { content: '\f043'; }
        label[for*='2']:before { content: '\f238'; }
        label[for*='3']:before { content: '\f275'; }
        label[for*='4']:before { content: '\f171'; }

        label:hover {
            color: #E0FF80;
            cursor: pointer;
        }

        input:checked + label {
            color: #E0FF80;
            border: 1px solid #E0FF80;
            border-top: 2px solid #E0FF80;
            border-bottom: 1px solid #EAEAEA;
        }

        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2,
        #tab3:checked ~ #content3,
        #tab4:checked ~ #content4 {
            display: block;
            width: 900px;

        }

        @media screen and (max-width: 800px) {
            label {
                font-size: 0;
            }
            label:before {
                margin: 0;
                font-size: 18px;
            }
        }

        @media screen and (max-width: 500px) {
            label {
                padding: 15px;
            }
        }

        /*! HTML5 Boilerplate v7.0.1 | MIT License | https://html5boilerplate.com/ */

        /* main.css 1.0.0 | MIT License | https://github.com/h5bp/main.css#readme */
        /*
         * What follows is the result of much research on cross-browser styling.
         * Credit left inline and big thanks to Nicolas Gallagher, Jonathan Neal,
         * Kroc Camen, and the H5BP dev community and team.
         */


        /* ==========================================================================
           Base styles: opinionated defaults
           ========================================================================== */

        html {
            color: #EAEAEA;
            /* font-size: 1em; */
            line-height: 1.4;
        }

        /*
         * Remove text-shadow in selection highlight:
         * https://twitter.com/miketaylr/status/12228805301
         *
         * Vendor-prefixed and regular ::selection selectors cannot be combined:
         * https://stackoverflow.com/a/16982510/7133471
         *
         * Customize the background color to match your design.
         */

        ::selection {
            background: #b3d4fc;
            text-shadow: none;
        }

        /*
         * A better looking default horizontal rule
         */

        hr {
            display: block;
            height: 1px;
            border: 0;
            border-top: 1px solid #ccc;
            margin: 1em 0;
            padding: 0;
        }

        /*
         * Remove the gap between audio, canvas, iframes,
         * images, videos and the bottom of their containers:
         * https://github.com/h5bp/html5-boilerplate/issues/440
         */

        audio,
        canvas,
        iframe,
        img,
        svg,
        video {
            vertical-align: middle;
        }

        /*
         * Remove default fieldset styles.
         */

        fieldset {
            border: 0;
            margin: 0;
            padding: 0;
        }

        /*
         * Allow only vertical resizing of textareas.
         */

        textarea {
            resize: vertical;
        }

        /* ==========================================================================
           Browser Upgrade Prompt
           ========================================================================== */

        .browserupgrade {
            margin: 0.2em 0;
            background: #ccc;
            color: #000;
            padding: 0.2em 0;
        }





        /* ==========================================================================
          Helper classes
          ========================================================================== */

        /*
         * Hide visually and from screen readers
         */

        .hidden {
            display: none !important;
        }

        /*
        * Hide only visually, but have it available for screen readers:
        * https://snook.ca/archives/html_and_css/hiding-content-for-accessibility
        *
        * 1. For long content, line feeds are not interpreted as spaces and small width
        *    causes content to wrap 1 word per line:
        *    https://medium.com/@jessebeach/beware-smushed-off-screen-accessible-text-5952a4c2cbfe
        */

        .visuallyhidden {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
            white-space: nowrap; /* 1 */
        }

        /*
        * Extends the .visuallyhidden class to allow the element
        * to be focusable when navigated to via the keyboard:
        * https://www.drupal.org/node/897638
        */

        .visuallyhidden.focusable:active,
        .visuallyhidden.focusable:focus {
            clip: auto;
            height: auto;
            margin: 0;
            overflow: visible;
            position: static;
            width: auto;
            white-space: inherit;
        }

        /*
        * Hide visually and from screen readers, but maintain layout
        */

        .invisible {
            visibility: hidden;
        }

        /*
        * Clearfix: contain floats
        *
        * For modern browsers
        * 1. The space content is one way to avoid an Opera bug when the
        *    `contenteditable` attribute is included anywhere else in the document.
        *    Otherwise it causes space to appear at the top and bottom of elements
        *    that receive the `clearfix` class.
        * 2. The use of `table` rather than `block` is only necessary if using
        *    `:before` to contain the top-margins of child elements.
        */

        .clearfix:before,
        .clearfix:after {
            content: " "; /* 1 */
            display: table; /* 2 */
        }

        .clearfix:after {
            clear: both;
        }


        /* ==========================================================================
           EXAMPLE Media Queries for Responsive Design.
           These examples override the primary ('mobile first') styles.
           Modify as content requires.
           ========================================================================== */

        @media only screen and (min-width: 35em) {
            /* Style adjustments for viewports that meet the condition */
        }

        @media print,
        (-webkit-min-device-pixel-ratio: 1.25),
        (min-resolution: 1.25dppx),
        (min-resolution: 120dpi) {
            /* Style adjustments for high resolution devices */
        }


        /* ==========================================================================
           Print styles.
           Inlined to avoid the additional HTTP request:
           https://www.phpied.com/delay-loading-your-print-css/
           ========================================================================== */

        @media print {
            *,
            *:before,
            *:after {
                background: transparent !important;
                color: #000 !important; /* Black prints faster */
                -webkit-box-shadow: none !important;
                box-shadow: none !important;
                text-shadow: none !important;
            }

            a,
            a:visited {
                text-decoration: underline;
            }

            a[href]:after {
                content: " (" attr(href) ")";
            }

            abbr[title]:after {
                content: " (" attr(title) ")";
            }

            /*
             * Don't show links that are fragment identifiers,
             * or use the `javascript:` pseudo protocol
             */

            a[href^="#"]:after,
            a[href^="javascript:"]:after {
                content: "";
            }

            pre {
                white-space: pre-wrap !important;
            }
            pre,
            blockquote {
                border: 1px solid #999;
                page-break-inside: avoid;
            }

            /*
             * Printing Tables:
             * http://css-discuss.incutio.com/wiki/Printing_Tables
             */

            thead {
                display: table-header-group;
            }

            tr,
            img {
                page-break-inside: avoid;
            }

            p,
            h2,
            h3 {
                orphans: 3;
                widows: 3;
            }

            h2,
            h3 {
                page-break-after: avoid;
            }
        }

        /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */

        /* Document
           ========================================================================== */

        /**
         * 1. Correct the line height in all browsers.
         * 2. Prevent adjustments of font size after orientation changes in iOS.
         */

        html {
            line-height: 1.15; /* 1 */
            -webkit-text-size-adjust: 100%; /* 2 */
        }

        /* Sections
           ========================================================================== */

        /**
         * Remove the margin in all browsers.
         */

        body {
            margin:0;
        }

        /**
         * Render the `main` element consistently in IE.
         */

        .main {
            /*display: block; */

        }

        /**
         * Correct the font size and margin on `h1` elements within `section` and
         * `article` contexts in Chrome, Firefox, and Safari.
         */

        h1 {
            font-size: 2em;
            margin: 0.67em 0;
        }

        /* Grouping content
           ========================================================================== */

        /**
         * 1. Add the correct box sizing in Firefox.
         * 2. Show the overflow in Edge and IE.
         */

        hr {
            box-sizing: content-box; /* 1 */
            height: 0; /* 1 */
            overflow: visible; /* 2 */
        }

        /**
         * 1. Correct the inheritance and scaling of font size in all browsers.
         * 2. Correct the odd `em` font sizing in all browsers.
         */

        pre {
            font-family: monospace, monospace; /* 1 */
            font-size: 1em; /* 2 */
        }

        /* Text-level semantics
           ========================================================================== */

        /**
         * Remove the gray background on active links in IE 10.
         */

        a {
            background-color: transparent;
        }

        /**
         * 1. Remove the bottom border in Chrome 57-
         * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.
         */

        abbr[title] {
            border-bottom: none; /* 1 */
            text-decoration: underline; /* 2 */
            text-decoration: underline dotted; /* 2 */
        }

        /**
         * Add the correct font weight in Chrome, Edge, and Safari.
         */

        b,
        strong {
            font-weight: bolder;
        }

        /**
         * 1. Correct the inheritance and scaling of font size in all browsers.
         * 2. Correct the odd `em` font sizing in all browsers.
         */

        code,
        kbd,
        samp {
            font-family: monospace, monospace; /* 1 */
            font-size: 1em; /* 2 */
        }

        /**
         * Add the correct font size in all browsers.
         */

        small {
            font-size: 80%;
        }

        /**
         * Prevent `sub` and `sup` elements from affecting the line height in
         * all browsers.
         */

        sub,
        sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline;
        }

        sub {
            bottom: -0.25em;
        }

        sup {
            top: -0.5em;
        }

        /* Embedded content
           ========================================================================== */

        /**
         * Remove the border on images inside links in IE 10.
         */

        img {
            border-style: none;
        }

        /* Forms
           ========================================================================== */

        /**
         * 1. Change the font styles in all browsers.
         * 2. Remove the margin in Firefox and Safari.
         */

        button,
        input,
        optgroup,
        select,
        textarea {
            font-family: inherit; /* 1 */
            font-size: 100%; /* 1 */
            line-height: 1.15; /* 1 */
            margin: 0; /* 2 */
        }

        /**
         * Show the overflow in IE.
         * 1. Show the overflow in Edge.
         */

        button,
        input { /* 1 */
            overflow: visible;
        }

        /**
         * Remove the inheritance of text transform in Edge, Firefox, and IE.
         * 1. Remove the inheritance of text transform in Firefox.
         */

        button,
        select { /* 1 */
            text-transform: none;
        }

        /**
         * Correct the inability to style clickable types in iOS and Safari.
         */

        button,
        [type="button"],
        [type="reset"],
        [type="submit"] {
            -webkit-appearance: button;
        }

        /**
         * Remove the inner border and padding in Firefox.
         */

        button::-moz-focus-inner,
        [type="button"]::-moz-focus-inner,
        [type="reset"]::-moz-focus-inner,
        [type="submit"]::-moz-focus-inner {
            border-style: none;
            padding: 0;
        }

        /**
         * Restore the focus styles unset by the previous rule.
         */

        button:-moz-focusring,
        [type="button"]:-moz-focusring,
        [type="reset"]:-moz-focusring,
        [type="submit"]:-moz-focusring {
            outline: 1px dotted ButtonText;
        }

        /**
         * Correct the padding in Firefox.
         */

        fieldset {
            padding: 0.35em 0.75em 0.625em;
        }

        /**
         * 1. Correct the text wrapping in Edge and IE.
         * 2. Correct the color inheritance from `fieldset` elements in IE.
         * 3. Remove the padding so developers are not caught out when they zero out
         *    `fieldset` elements in all browsers.
         */

        legend {
            box-sizing: border-box; /* 1 */
            color: inherit; /* 2 */
            display: table; /* 1 */
            max-width: 100%; /* 1 */
            padding: 0; /* 3 */
            white-space: normal; /* 1 */
        }

        /**
         * Add the correct vertical alignment in Chrome, Firefox, and Opera.
         */

        progress {
            vertical-align: baseline;
        }

        /**
         * Remove the default vertical scrollbar in IE 10+.
         */

        textarea {
            overflow: auto;
        }

        /**
         * 1. Add the correct box sizing in IE 10.
         * 2. Remove the padding in IE 10.
         */

        [type="checkbox"],
        [type="radio"] {
            box-sizing: border-box; /* 1 */
            padding: 0; /* 2 */
        }

        /**
         * Correct the cursor style of increment and decrement buttons in Chrome.
         */

        [type="number"]::-webkit-inner-spin-button,
        [type="number"]::-webkit-outer-spin-button {
            height: auto;
        }

        /**
         * 1. Correct the odd appearance in Chrome and Safari.
         * 2. Correct the outline style in Safari.
         */

        [type="search"] {
            -webkit-appearance: textfield; /* 1 */
            outline-offset: -2px; /* 2 */
        }

        /**
         * Remove the inner padding in Chrome and Safari on macOS.
         */

        [type="search"]::-webkit-search-decoration {
            -webkit-appearance: none;
        }

        /**
         * 1. Correct the inability to style clickable types in iOS and Safari.
         * 2. Change font properties to `inherit` in Safari.
         */

        ::-webkit-file-upload-button {
            -webkit-appearance: button; /* 1 */
            font: inherit; /* 2 */
        }

        /* Interactive
           ========================================================================== */

        /*
         * Add the correct display in Edge, IE 10+, and Firefox.
         */

        details {
            display: block;
        }

        /*
         * Add the correct display in all browsers.
         */

        summary {
            display: list-item;
        }

        /* Misc
           ========================================================================== */

        /**
         * Add the correct display in IE 10+.
         */

        template {
            display: none;
        }

        /**
         * Add the correct display in IE 10.
         */

        [hidden] {
            display: none;
        }

    </style>



    <meta name="theme-color" content="#fafafa">
</head>

<body bgcolor="#282828">
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Add your site or application content here -->
<!--<div class="main_container"> -->
<div class="header">
    <h1>TOURS</h1>
</div>

<div class="topnav">
    <div class="left">
        <a href="/server3_war_exploded/User_index">Home</a>
        <a href="/server3_war_exploded/uTrails">Trails</a>
        <a class="active" href="/server3_war_exploded/uTours">Tours</a>
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


<div class="main">
    <h1>Tours</h1>
    <input id="tab1" type="radio" name="tabs" checked>
    <label for="tab1">Canal</label>

    <input id="tab2" type="radio" name="tabs">
    <label for="tab2">Railroad</label>

    <input id="tab3" type="radio" name="tabs">
    <label for="tab3">Industry</label>


    <section id="content1">
        <div class="description">
            <p>
                During the construction of the PA Canal, the commonwealth employed thousands of workers to make a stark transition from vision to reality.<br>
                It was the first efficient route of commerce from Philadelphia to Hollidaysburg. <br>
                The PA Canal was a network of east-west canals and connecting railroads that spanned Pennsylvania from Philadelphia to Pittsburgh. <br>
                North-south canals connecting with this east-west canal ran between West Virginia and Lake Erie on the west, Maryland and New York in the center,<br>
                and along the border with Delaware and New Jersey on the east. Many shorter canals connected cities such as York, Port Carbon, and Franklin to the larger network.
            </p>
        </div>
        <img src="https://i.imgur.com/OcBiVyw.png">

        <img src= "https://i.imgur.com/uAUN75y.png">
    </section>

    <section id="content2">
        <div class="description">
            <p>
                The Allegheny Portage Railroad was the first railroad constructed through the Allegheny Mountains in central Pennsylvania. <br>
                The Allegheny Portage Railroad operated from 1834 to 1854 as the first transportation infrastructure through the gaps of <br>
                the Allegheny that connected the midwest to the eastern seaboard across the barrier range of the Allegheny Front. <br>
                Authorized as part of the Main Line of Public Works legislation in 1824, it contained a series of ten inclines connecting to a branch <br>
                of the Pennsylvania Canal at either end, approximately 36 miles long overall.The Portage Railroad utilized cleverly designed wheeled barges <br>
                to ride a narrow-gauge rail track with steam-powered stationary engines lifting the vehicles.Along with the rest of the Main Works,<br>
                it cut transport time from Philadelphia to the Ohio River from weeks to just 3–5 days.
                It connected two canal 'divisions' of the Main Line of Public Works of the Pennsylvania Canal System, from Johnstown on the west through the relative<br>
                flats to Hollidaysburg on the east, thus allowing continuous barge traffic between the Ohio and the Susquehanna Rivers. Considered a technological marvel in its day,<br>
                it played a critical role in opening the interior of the United States beyond the Appalachian Mountains to settlement and commerce.<br>
            </p>


        </div>
        <div class="relimage">
            <img src="https://i.imgur.com/XYDSSx2.png">
            <img src="https://i.imgur.com/25FISYe.jpg">
        </div>


    </section>

    <section id="content3">
        <div class="description">
            <p>
                In North America, the decades-long consolidation of the rail industry led to the closure of a number of uneconomical branch lines and redundant mainlines.<br>
                Some were maintained as short line railways, but many others were abandoned.The conversion of rails to trails hastened with the federal government passing legislation promoting<br>
                the use of railbanking for abandoned railroad corridors in 1983 which was upheld by the U.S. Supreme Court in 1990.This process preserves rail corridors for possible <br>
                future rail use with interim use as a trail. By the 1970s, even main lines were being sold or abandoned. This was especially true when regional rail lines merged and streamlined their operations<br>
            </p>
        </div>
        <img src="https://i.imgur.com/PuaTpOx.png">

    </section>

</div>
<!--</div>-->

</body>

</html>
