<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trek the Trail Fitness Tracker</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">

    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="js/respond.min.js"></script>
</head>
<body>
<nav>
    <ul>
        <li>
            <g:link controller="user" action="about">
                <span>Home</span>
            </g:link>
        </li>
        <li>
            <g:link controller="entry" action="index">
                <span>Profile</span>
            </g:link>
        </li>
        <li>
            <g:link controller="user" action="settings">
                <span>Settings</span>
            </g:link>
        </li>
    </ul>
    <div id=loginControl style="position: absolute; right: 0px;">
        <g:loginControl></g:loginControl>
    </div>
</nav>

<div class="gridContainer clearfix">
    <div id="div1" class="fluid">
        <section id="left">

            <div class="gcontent">
                <div class="head"><h1>Settings</h1></div>
                <div class="boxy">
                    <ul class="settings">
                        <li><a href="#">Change Email Address</a></li>
                        <li><a href="#">Reset Password</a></li>
                        <li><a href="#">Delete Account</a></li>
                    </ul>
                </div>

            </div>

        </section>
        <section class="footer">
            <p>&copy; 2014</p>
            <p class="right">version 1.0</p>
        </section>
    </div>
</div>
</body>
</html>