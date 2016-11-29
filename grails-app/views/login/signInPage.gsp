<html>
	<head>
	 	<meta name="layout" content="main"/>
	 	<title>Welcome To MyBlog</title>
	 	<Style type="text/css">
	 	label{
	 		float:left;
	 		width:65px;
	 		}
	 	</style>
	</head>
	<body class="container">
	<g:form controller="login" action="login" style="padding-left:200px">
		<div style="width:220px">
			<label>User Name</label> <input type="text" name="username"/>
			<label>Password</label> <input type="password" name="password"/>
			<label>&nbsp;</label> <input type="submit" value="Login"/>
		</div>
		</g:form>
	</body>
		
</html>