<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ragister</title>
<link rel="stylesheet" href="css/ragister.css">
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
		<form class="formarea" action="userAddController" method="get">
			<h1>Welcome To SM Mess</h1>
			<h2>Ragister Here</h2>
				 <label for="Uname">Candidate Name</label> 
				 <input type="text" name="Uname" id="Uname" placeholder="Enter full name" />
				 <label for="UEmail">Email</label> 
				 <input type="email" name="Email" id="Email" placeholder="Enter Email" /> 
				 <label for="UNumber">Phone Number</label> 
				 <input type="text" name="number" id="number" placeholder="Enter number" /> 
				 <label for="Uage">Age</label> 
				 <input type="text" name="age" id="age" placeholder="Enter age" />
			<button>login</button>
			<!-- <p>
				Click here to login ? <a href="loginP"> Login here</a>
			</p> -->
		</form>

	</div>


</body>

</html>