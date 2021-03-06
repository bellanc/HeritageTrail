<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="apple-touch-icon" sizes="57x57"  href="${resource(dir: 'images', file: 'apple-touch-icon-57x57.png')}">
<link rel="apple-touch-icon" sizes="60x60" href="${resource(dir: 'images', file: 'apple-touch-icon-60x60.png')}" >
<link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72.png')}" >
<link rel="apple-touch-icon" sizes="76x76" href="${resource(dir: 'images', file: 'apple-touch-icon-76x76.png')}" >
<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114.png')}">
<link rel="apple-touch-icon" sizes="120x120" href="${resource(dir: 'images', file: 'apple-touch-icon-120x120.png')}">
<link rel="apple-touch-icon" sizes="144x144" href="${resource(dir: 'images', file: 'apple-touch-icon-144x144.png')}">
<link rel="apple-touch-icon" sizes="152x152" href="${resource(dir: 'images', file: 'apple-touch-icon-152x152.png')}">
<link rel="apple-touch-icon" sizes="180x180" href="${resource(dir: 'images', file: 'apple-touch-icon-180x180.png')}">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon-32x32.png')}" sizes="32x32">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'android-chrome-192x192.png')}" sizes="192x192">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon-96x96.png')}" sizes="96x96">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon-16x16.png')}"  sizes="16x16">

	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <title>Reset Password</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
          rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'  rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <g:javascript src="application.js" />
	<g:javascript src="bootstrap.js" />

</head>

<body>
<g:render template="../navbar" />

<!-- Box Start-->


    <div id="box_bg">
         <g:if test ="${flash.message}">
			<div class="errors" style="color:red">${flash.message}</div>
		</g:if>

    <div id="content">
    
        <br/>

        <div class="inner">

        

            <h1>Set New Password</h1>
		<g:form>
			<g:passwordField name="password1" placeholder="New Password" class="register"/><br/>
			<g:passwordField name="password2" placeholder="Confirm Password" class="register"/><br/>
			<g:hiddenField name="user" id="${user}"/>
			<g:actionSubmit value="Set Password" style="background-color:#648e3d" action="forgotPassword" class="button green"/><br/>
		
		</g:form>


    
    </div>
</div>

    </div>
    <div id="bottom_text">
        Remember your login? <a class="green" href="login.html">Sign In</a><br/>
    </div>
    </div>
    
        <div class="footwrap">
<div id="foot">

    <div id="widget">
    
    </div>
    <p class="back-top">
				<a href="#top">
					<img src="../images/Arrow.png" alt="Back to Top">
				</a>
			</p>
    <div class="footer-text clearfix">
				<div class="one">© <a href="http://trekthetrail.org">Trek The Trail</a> 2015</div>				<div class="two">Designed by <a href="http://neueideas.com" target="_blank">Chiselbox</a>.</div>			
    
    </div>
    
    </div>
</div>
</body>
</html>
