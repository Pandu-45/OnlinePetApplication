<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	color: black;
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
</style>
<meta charset="ISO-8859-1">
<title>Registration Form Of Pet</title>
<c:if test="${validUser==null}">
	<c:redirect url="/login"></c:redirect>
</c:if>
</head>
<body>
<div class="head-div">
		<h1>PetPeers</h1>
		<nav class="main-nav">
			<br>
			<ul class="main-nav-items">
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/profile">Profile</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/registerpet">Register
						Pet</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/displaypets">My Pets</a></li>
				<li class="main-nav-item"><a
					href="${pageContext.request.contextPath}/logout">Logout</a></li>
			</ul>
		</nav>
		</div>
<h1 class="loginhead">PET REGISTRATION FORM</h1>
	<p id="message">${message}</p>
	<div class="login">
	<form:form action="${pageContext.request.contextPath}/processregisterpet" method="post" modelAttribute="pet">
		<table>
			<tr>
				<td><form:label path="pname">Enter Pet Name: </form:label>
				</td>
				<td><form:input path="pname" id="userName" /> <br> <form:errors
						path="pname" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="petbreed">Enter Pet Breed: </form:label></td>
				<td><form:input path="petbreed" id="password" /> <br>
					<form:errors path="petbreed" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="age">Enter Pet Age : </form:label></td>
				<td><form:input path="age" id="password" /> <br>
					<form:errors path="age" cssClass="error"></form:errors>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Register"></td>
			</tr>
		</table>
	</form:form>
	</div>
</body>
</html>