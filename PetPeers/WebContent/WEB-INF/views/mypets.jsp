<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
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

h1, p {
	text-align: center;
}

.loginhead {
	margin-top: 90px;
	margin-bottom: 10px;
}

.welcome {
	text-align: center;
	margin: 15px;
	color: #1a66ff;
}

.login {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding: 10px;
	border: 1px solid;
	
	box-shadow: box-shadow: 5px 10px #ADD8E6;
	margin-top: 40px;
}

table {
	width: 100%;
	border-collapse: collapse;
	border: 1px solid;
	box-shadow: box-shadow: 5px 10px #ADD8E6;
}

th {
	border: 1px solid black;
	padding: 10px;
	text-align: center;
	background-color: #ffe6e6;
	color: red
}

td {
	border: 1px solid black;
	padding: 10px;
	text-align: center;
	background-color: #ffe6e6;
	color: black
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>List of owned Pets</title>
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
	<h1 class="welcome">My Pets</h1>
	<div class="login">
		<table>
			<thead>
				<tr>
					<th>Pet Name</th>
					<th>Pet Breed</th>
					<th>Pet Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pet" items="${myPets}">
					<tr>
						<td><c:out value="${pet.pname}" /></td>
						<td><c:out value="${pet.petbreed}" /></td>
						<td><c:out value="${pet.age}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>