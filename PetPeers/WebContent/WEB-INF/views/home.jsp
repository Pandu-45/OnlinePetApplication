<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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



body {
	background-image:
		url("https://tse2.mm.bing.net/th/id/OIP.2sLI6Ub9KoN_i9igvEVRnQHaEK?pid=Api&rs=1");
}

.cont {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding-top: 150px;
	font-family: sans-serif;
}

.large {
	font-size: 25px;
}

.loginhead {
	color: #1a66ff;
	margin-left: 10px;
}
.message{
text-align:center;
color: black; 
}
.bgcolor{
background-color: green;
}
</style>
<%
	response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
%>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<header>
		<div class="head-div">
			<h1>PetPeers</h1>
			<nav class="main-nav">
				<ul class="main-nav-items">
					<li class="main-nav-item"><a
						href="${pageContext.request.contextPath}/register">Register</a></li>
					<li class="main-nav-item"><a
						href="${pageContext.request.contextPath}/login">Login</a></li>
				</ul>
			</nav>
		</div>
	</header>
	
	<div class="cont">

	</div>
	<br><br><div class="message"><span class="bgcolor" >${message}</span></div>
</body>
</html>