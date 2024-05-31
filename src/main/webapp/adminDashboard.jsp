<%@page import="org.SMMess.admin.model.adminModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AdminLogin</title>
<link rel="stylesheet" href="css/adminDashboard.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
	<style type="text/css">
		.dropbtn{
			margin-top: 10px;
		}
		.dropbtn a:hover{
			color:red;
		}
		
	</style>
</head>

<body>

<%!adminModel model;%>
	<%
	request.getSession().getAttribute("pass");
	%>
	<%
	model = (adminModel) session.getAttribute("pass");
	%> 
<%-- <%
	out.print(model.toString());
	%>  --%>
	<header>
		<nav>
			<div class="top-nav">
				<div class="top-nav-left">
					<ul>
						<li><a href="">About Us</a></li>
						<li><a href="">Privacy</a></li>
						<li><a href="">FAQ</a></li>
					</ul>
				</div>
				<div class="top-nav-right">
					<ul>
						<li><a href="">Watchlist</a></li>
						<li><a href="">Track Order</a></li>
						<li><a href=""><i class="fa-brands fa-instagram"></i></a></li>
						<li><a href=""><i class="fa-brands fa-facebook"></i></a></li>
						<li><a href=""><i class="fa-brands fa-twitter"></i></a></li>
						<li><a href=""><i class="fa-brands fa-linkedin-in"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="middle-nav">
				<div class="logo">
					<h1>
						SM<span>Mess</span>
					</h1>
				</div>
				<div class="mid-nav-center">
					<ul>
						<li class="dropdown"><a href="candidateDashboard.jsp"
							class="dropbtn">Candidate</a><div class="dropdown-content" class="dropbtn">
								<!-- <a href="markAttendance.jsp" >Mark Attendance</a> -->
							</div></li>
						<li class="dropdown"><a href="MenuDashboard.jsp"
							class="dropbtn">Menu</a></li>
						<li class="dropdown"><a href="selectBillType.jsp" class="dropbtn">Generate
								Bill</a></li>
						<li class="dropdown"><a href="#" class="dropbtn">Report</a></li>
					</ul>
				</div>
				<div class="mid-nav-right">
					<ul>
						<li class="dropdown"><a href="#" class="dropbtn"><i
								class="fa-solid fa-user"></i></a>
							<div class="dropdown-content">
								<a href="logout1">Logout</a>
							</div></li>
						<li><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
</body>

</html>