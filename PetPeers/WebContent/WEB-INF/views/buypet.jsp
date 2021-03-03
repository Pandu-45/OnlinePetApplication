<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	color: blue;
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
	color: #1a66ff;;
}



h1, p {
	text-align: center;
}

.loginhead {
	margin-top:30px;
	color: #1a66ff;;
}

.welcome {
	text-align: center;
	margin: 5px;
	color: #1a66ff;
}

.login {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding: 10px;
	border: 1px solid;
	/* margin-left:35%;
     margin-right:35%;
      */
	box-shadow: box-shadow: 5px 10px #ADD8E6;
	margin-top: 10px;
}
.para {
	text-align: justify;
	text-justify: auto;
	border: 1px solid black;
	box-shadow: 5px 10px black;
	width: 50%;
	padding: 20px;
	line-height: 30px;
	background-color: grey;
	margin-top:30px; 
}
.cont {
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding-top: 50px;
	font-family: sans-serif;
	
}
</style>
<meta charset="ISO-8859-1">
<title>Success</title>
<c:if test="${validUser==null}">
	<c:redirect url="/login"></c:redirect>
</c:if>
</head>
<body>
<div class="head-div">
		<h1>The Paw Pack PetPeers</h1>
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
<h1 class="loginhead"> ${message} </h1><br>
<div class="cont">
<p class="para">
<strong>Pet Name  : ${updated_pet.pname} <br>
Pet Breed : ${updated_pet.petbreed}<br>
Pet Age   : ${ updated_pet.age}<br>
</strong>
</p>
</div>
</body>
</html>