<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Candidate Dashboard</title>
<link rel="stylesheet" href="css/candidateDashboard.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<%@include file="adminDashboard.jsp"%>
	<section class="main">
		<div class="container form">
			<div class="upper-section">
				<p>Hello Admin !<logo>SM</logo><span>Mess</span> Welcomes You</p>
				<button id="button">
					<a href="addCandidate.jsp"> Add Candidate</a>
				</button>
				<button id="button">
					<a href="viewCandidate.jsp">View Candidates</a>
				</button>
			</div>
			<br>
			<br>
			<hr>
			<div class="lower-section"></div>
		</div>
	</section>
	</nav>
    </header>
</body>

</html>