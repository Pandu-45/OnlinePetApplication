<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	box-sizing: border-box;
	margin: 0px;
	font-family: sans-serif;
}

.head-div {
	background-color: grey;
	color: blue;
}

h1 {
	text-align: center;
}

.main-nav {
	display: inline-block;
	text-align: right;
	width: calc(100% - 74px);
	vertical-align: middle;
}

.main-nav-items {
	display: inline-block;
	list-style: none;
}

.main-nav-item a {
	display: inline-block;
	text-decoration: none;
	font-weight: bold;
	color: black;
	font-size: large;
	margin: 0px;
}

.main-nav-item {
	display: inline-block;
	padding: 5px;
	vertical-align: middle;
}

.main-nav-item a:hover {
	color: #1a66ff;
}



.login {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding: 10px;
	/*  border: 1px solid black;
     margin-left:35%;
     margin-right:35%;
     margin-top:10px; */
	/* box-shadow:  box-shadow: 5px 10px #888888;; */
}

h1, p {
	text-align: center;
}

.loginhead {
	margin-top: 90px;
	margin-bottom: 10px;
	color: #1a66ff;
}

table {
	border: 1px solid;
	padding: 30px;
	box-shadow: 5px 10px #ADD8E6;
	background-color: #ffe6e6;
}
.message{
text-align:center;
color: black; 
}
.bgcolor{
background-color: green;
}
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div class="head-div">
		<h1>The Paw Pack PetPeers</h1>
		<nav class="main-nav">
			<ul class="main-nav-items">
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/register">Register</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/login">Login</a></li>
			</ul>
		</nav>
	</div>
	<h1 class="loginhead">LOGIN FORM</h1>
	<div class="login">
		
		<form:form action="${pageContext.request.contextPath}/processlogin"
			method="post" modelAttribute="user">
			<table>
				<tr>
					<td><form:label path="email">Enter Email: </form:label></td>
					<td><form:input path="email" id="userName" /> <br> <form:errors
							path="email" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td><form:label path="password">Enter password: </form:label></td>
					<td><form:password path="password" id="password" /> <br>
						<form:errors path="password" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="LOGIN"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<br><br><div class="message"><span class="bgcolor" >${message}</span></div>
</body>
</html>