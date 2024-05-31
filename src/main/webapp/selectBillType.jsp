<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/candidateDashboard.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.select-wrapper {
    position: relative;
    display: inline-block;
    margin-right: 10px; /* Adjust margin as needed */
}

.select-wrapper select {
    padding: 10px 30px 10px 10px; /* Add padding to the right to make space for the arrow */
    font-size: 16px;
    border: none;
    border-radius: 5px;
    background-color: #f1f1f1;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    cursor: pointer;
}

.select-wrapper select:focus {
    outline: none;
}

.select-icon {
    position: absolute;
    top: 50%;
    right: 10px; /* Adjust right position as needed */
    transform: translateY(-50%);
    pointer-events: none;
}
</style>
</head>
<body>
	<%@include file="adminDashboard.jsp"%>
	<section class="main">
		<div class="container form">
			<div class="upper-section">
				<p>
					Hello Admin !
					<logo>SM</logo>
					<span>Mess</span> Welcomes You
				</p>
				<!-- Dropdown menu for meal options -->
				<div class="select-wrapper">
                    <select onchange="navigateTo(this.value)">
                        <option value="" selected disabled>Select Meal</option>
                        <option value="breakfast.jsp?type=breakfast">Breakfast</option>
                        <option value="lunch.jsp"?type=lunch">Lunch/Dinner</option>
                        
                    </select>
                    <div class="select-icon">
                        <i class="fa fa-caret-down"></i>
                    </div>
                </div>
                 <button type="submit" id="button">Candidate bill</button>	
			</div>
			<br> <br>
			<hr>
			<div class="lower-section"></div>
		</div>
	</section>
	</nav>
	</header>

	<script>
		// Function to navigate to the selected meal page
		function navigateTo(url) {
			if (url) {
				window.location.href = url;
			}
		}
	</script>
</body>
</html>
