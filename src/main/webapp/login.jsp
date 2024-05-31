<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<style type="text/css">
body {
	background: linear-gradient(rgba(0, 0, 0, 0.20), rgba(0, 0, 0, 0.20)),
		url(images/images.jpg);
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
}

</style>
</head>
<body>
	<div class="login">
		<form action="adminLoginController" method="post">
			<h1>Welcome Admin To SM Mess</h1>
			<h2>Admin Log In</h2>
			<label for="Uname">Username</label> 
			<input type="text" name="Uname" id="Uname" placeholder="Enter Username" /> 
			<label for="Uname">Password</label>
			<input type="password" name="pass" id="pass" placeholder="Enter Password" />
			<button>login</button>
			<p>
				Click here to Ragister ? <a href="ragister.jsp"> Ragister here</a>
			</p>
		</form>
	</div>
	
</body>
</html>