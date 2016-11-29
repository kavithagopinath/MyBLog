
<%@ page import="myblog.Login" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'login.label', default: 'Login')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body class="container">
		<a href="#list-login" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-login" class="content scaffold-list" role="main">
			
				
				
				<g:form controller="post" action="index" style="padding-left:200px">
		<div style="width:220px" class="col-md-12">
			<label>User Name</label> <input type="text" name="username"/>
			<label>Password</label> <input type="password" name="password"/>
			<label>&nbsp;</label> <input type="submit" value="Login"/>
		</div>
		</g:form>
				
				
				
			
			
				
				
			
			<div class="pagination">
				<g:paginate total="${loginInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
