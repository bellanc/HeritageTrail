<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <title>Register</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
          rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<g:javascript src="application.js" />

</head>

<body>
<nav>
    <ul>
        <li>
            <g:link controller="entry" action="about">
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
        <a class="fb2" href="https://www.facebook.com/groups/566890070098865" target="_blank"></a>
    </ul>
</nav>

<!-- Box Start-->
<div id="box_bg">

    <div id="content">
        <br/>

        <div class="inner">

            <h1 class="blue">Register</h1>


            <g:form controller="user" action="create">
                <dl>
                   
                   
                   
                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'firstName', 'error')} ">
                        	<g:textField name="firstName" value="${user?.firstName}" 
                        				 class="register" value='First Name'
										 onkeydown="startDefaultVal(this.id,'First Name')"
										 onblur="placeHolder(this.id,'First Name')"/>
                        	<g:hasErrors bean="${user}" field="firstName">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="firstName"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>
                    
                    
                    
                    

                   <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'lastName', 'error')} ">
                        	<g:textField name="lastName" value="${user?.lastName}" class="register" value='Last Name'
										 onkeydown="startDefaultVal(this.id,'Last Name')"
										 onblur="placeHolder(this.id,'Last Name')"/>
							<g:hasErrors bean="${user}" field="lastName">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="lastName"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>

                    
                    
                    
                    
                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'login', 'error')} ">
                        	<g:textField name="login" value="${user?.login}" class="register" value='Username'
										 onkeydown="startDefaultVal(this.id,'Username')"
										 onblur="placeHolder(this.id,'Username')"/>
							<g:hasErrors bean="${user}" field="login">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="login"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>
                    
                    
                    

                    
                    
                    
                    
                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'email', 'error')} ">
                        	<g:textField name="email" value="${user?.email}" class="register" value='Email Address'
										 onkeydown="startDefaultVal(this.id,'Email Address')"
										 onblur="placeHolder(this.id,'Email Address')"/>
							<g:hasErrors bean="${user}" field="email">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="email"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>




                                       

                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'password', 'error')} ">
                        	<g:passwordField name="password" value="${user?.password}" class="register" value='Password'
										 onkeydown="startDefaultVal(this.id,'Password')"
										 onblur="placeHolder(this.id,'Password')"/>
							<g:hasErrors bean="${user}" field="password">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="password"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>





                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'password2', 'error')} ">
                        	<g:passwordField name="password2" value="${user?.password2}" class="register" value='Confirm Password'
										 onkeydown="startDefaultVal(this.id,'Confirm Password')"
										 onblur="placeHolder(this.id,'Confirm Password')"/>
							<g:hasErrors bean="${user}" field="password2">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="password2"/></li>
							</div>
							</g:hasErrors>
						</div>
					</dd>
					

                    <dd>
                    <div class="fieldcontain ${hasErrors(bean: user, field: 'question', 'error')} ">
                        <g:select class="register" name="question" from="${user.securityQuestion.sort()}"
                                  noSelection="${['': "Security Question"]}" style="width:320px"/>
                        <g:hasErrors bean="${user}" field="question">
                        <div class="field-error"><br/>
                            <li><g:renderErrors bean="${user}" as="list" field="question"/></li>
                        </div>
                        </g:hasErrors>
                      </dd>
                       
                       
                       
                       
					<dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'securityAnswer', 'error')} ">
                        	<g:textField name="securityAnswer" value="${user?.securityAnswer}" class="register" value='Security Answer'
										 onkeydown="startDefaultVal(this.id,'Security Answer')"
										 onblur="placeHolder(this.id,'Security Answer')"/>
							<g:hasErrors bean="${user}" field="securityAnswer">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="securityAnswer"/></li>
							</div>
							</g:hasErrors>
						</div>
					</dd>


                </dl>


                <g:submitButton class="button green" name="submit" value="Register"/>
            </g:form>

        </div>
    </div>
</div>

    <!-- Text Under Box -->

    <div id="bottom_text">
        Already have an account? <a id="blue" href="login.html">Sign In</a><br/>
    </div>
</body>
</html>
<%--


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Register</title>
<link href="css/register.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
</head>

<body>

<!-- Box Start-->
<div id="box_bg">

<div id="content">

	<h1 class="blue">Register</h1>

	<!-- Register Fields -->
	<div id="reg">
    <g:form controller="user" action="create">
      
      <g:textField name="login"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Username';" onfocus="if(this.value=='Username')this.value='';" value="Username" class="register"><g:message code='heritagetrail.user.login.blank' /></input>
      </g:hasErrors>

      <g:textField name="firstName"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='First Name';" onfocus="if(this.value=='First Name')this.value='';" value="First Name" class="register"><g:message code='heritagetrail.user.firstName.blank' /></input>
      </g:hasErrors>
      
      <g:textField name="lastName"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Last Name';" onfocus="if(this.value=='Last Name')this.value='';" value="Last Name" class="register"><g:message code='heritagetrail.user.lastName.blank' /></input>
      </g:hasErrors>

      <g:textField name="email"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Email';" onfocus="if(this.value=='Email')this.value='';" value="Email" class="register"><g:message code='heritagetrail.user.email.blank' /></input>
      </g:hasErrors>

      <g:textField name="password"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Password';" onfocus="if(this.value=='Password')this.value='';" value="Password" class="register"><g:message code='heritagetrail.user.password.blank' /></input>
      </g:hasErrors>

      <g:textField name="password2"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Confirm Password';" onfocus="if(this.value=='Confirm Password')this.value='';" value="Confirm Password" class="register"><g:message code='heritagetrail.user.password2.blank' /></input>
      </g:hasErrors>
      
      <g:textField name="age"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Age';" onfocus="if(this.value=='Age')this.value='';" value="Age" class="register"><g:message code='heritagetrail.user.age.blank' /></input>
      </g:hasErrors>

	<!-- Blue Button -->
	<div class="button blue"><a href="#">Register</a></div>
</g:form>
  <!--
  <input type="text" onblur="if(this.value=='')this.value='First Name';" onfocus="if(this.value=='First Name')this.value='';" value="First Name" class="register"/>
  <input type="text" onblur="if(this.value=='')this.value='Last Name';" onfocus="if(this.value=='Last Name')this.value='';" value="Last Name" class="register"/>
	<input type='text' name='password' value='Password'  onfocus="if(this.value=='' || this.value == 'Password') {this.value='';this.type='password'}"  onblur="if(this.value == '') {this.type='text';this.value=this.defaultValue}" class="register"/>
	<input type='text' name='password' value="Confirm Password"  onfocus="if(this.value=='' || this.value == 'Confirm Password') {this.value='';this.type='password'}"  onblur="if(this.value == '') {this.type='text';this.value=this.defaultValue}" class="register"/>
	<input type="text" onblur="if(this.value=='')this.value='Email';" onfocus="if(this.value=='Email')this.value='';" value="Email"  class="register"/>
  <input type="text" onblur="if(this.value=='')this.value='Age';" onfocus="if(this.value=='Age')this.value='';" value="Age" class="register"/>
  </g:form>
	</div>
	-->
  	
</div>
</div>

<!-- Text Under Box -->
<div id="bottom_text">
	Already have an account? <g:link controller="user" action="login">Sign In</g:link><br/>
</div>

</body>
</html>



--%>
