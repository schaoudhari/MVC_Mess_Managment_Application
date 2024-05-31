<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/homeDashboard.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<style type="text/css">
.scroll_img {
            width: 99%;
            height: 100vh;
            position: absolute;
            background-image: url(img2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            box-shadow: 1px 2px 10px white;
            animation: slider 15s infinite;

        }

        @keyframes slider {
            0% {
                background-image: url(/caraouselimages/Misal-Pav.jpg);
            }

            30% {
                background-image: url(/caraouselimages/milk-tea.jpg);
            }

            60% {
                background-image: url(/caraouselimages/poha.webp);
            }

            90% {
                background-image: url(/caraouselimages/puranpoli_thali_2.jpg);
            }
        }
.containe {
	background: url(images/bg.jpg);
	background-repeat: no-repeat;
	background-position: center;
}

.dropdown-toggle::after {
	display: none;
}
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.footer {
    background-color:rgb(215, 209, 209);
    color: black;
    padding: 20px 0;
    text-align: center;
    /* position: fixed; */
    width: 100%;
    bottom: 0;
}

.footer-content {
    margin: 0 auto;
    padding: 10px 20px;
    max-width: 1200px;
}

.footer-content p {
    margin: 0;
    font-size: 14px;
}

@media (max-width: 600px) {
    .footer-content {
        padding: 10px;
    }
}

</style>
</head>

<body>

	<nav class="navbar navbar-expand-lg fixed-top navbar-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#" style="font-size: 30px;"><span style="color: red">SM</span>Mess</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#images">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
					</li>
				</ul>
			</div>
			<div class="dropdown">
				<button class="btn btn-lg login dropdown-toggle" type="button"
					id="dropdownMenuButton" data-bs-toggle="dropdown"
					aria-expanded="false">
					<i class="fa-solid fa-user"></i> Login
				</button>
				<ul class="dropdown-menu dropdown-menu-end mt-2"
					aria-labelledby="dropdownMenuButton">
					<li><a class="dropdown-item" href="login.jsp">Admin
							Login</a></li>
					<li><a class="dropdown-item" href="userLogin.jsp">User
							Login</a></li>
				</ul>
				          
			</div>
		</div>
	</nav>
	
	<section>
		<div class="container containe">
			<div class="content">
				<h1>
					🙏||...<span id="words">WELCOME</span>...||🙏
				</h1>
			</div>
		</div>

	</section>
	<section class="container images" id="images">
		<h2 class="h1-responsive font-weight-bold text-center my-4">Our
			Services</h2>
		<!-- Gallery -->
		<div class="row">
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="images/milk-tea.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />

				<img src="images/chicken thali.avif"
					class="w-100 shadow-1-strong rounded mb-4"
					alt="Wintry Mountain Landscape" />
			</div>

			<div class="col-lg-4 mb-4 mb-lg-0">
				<img src="images/poli bhaji.jpg"
					class="w-100 shadow-1-strong rounded mb-4"
					alt="Mountains in the Clouds" /> <img
					src="images/South nashta.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />
			</div>

			<div class="col-lg-4 mb-4 mb-lg-0">
				<img src="images/poha.webp"
					class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" /> <img
					src="images/PULAV.webp" class="w-100 shadow-1-strong rounded mb-4"
					alt="Yosemite National Park" />
			</div>
		</div>
		<!-- Gallery -->
	</section>
	<section>
		<div class="container" id="contact">
			<h1>Connect with us</h1>
			<p>We would love to respond to your queries and help you succeed
				feel free to get in touch.!</p>
			<div class="contact_box">
				<div class="contact-left">
					<h3>Send Your Request</h3>
					<form action="">
						<div class="input-row">
							<div class="input-group">
								<label for="name">Name</label> <input type="text" name="name"
									id="" placeholder="Enter Your name">
							</div>
							<div class="input-group">
								<label for="name">Phone</label> <input type="text" name="name"
									id="" placeholder="+1234567890">
							</div>
						</div>
						<div class="input-row">
							<div class="input-group">
								<label for="name">Email</label> <input type="email" name="name"
									id="" placeholder="Enter Your email">
							</div>
							<div class="input-group">
								<label for="name">Subject</label> <input type="text" name="name"
									id="" placeholder="Enter Subject here">
							</div>
						</div>
						<label for="">Message</label>
						<textarea name="" id="" cols="30" rows="5"
							placeholder="Put Your Messa here"></textarea>

						<button type="submit" id="button">Submit</button>
					</form>
				</div>
				<div class="contact-right">
					<h3>reach us</h3>
					<table>
						<tr>
							<td>Email</td>
							<td>Hello@gmail.com</td>
						</tr>
						<tr>
							<td>Phone</td>
							<td>+91 1234567890</td>
						</tr>

						<tr>
							<td>Address</td>
							<td>#213 Pune,warje Maharashtra <br>India
							</td>

						</tr>

					</table>
				</div>
			</div>
		</div>
	</section>
	 <section class="footer">
        <div class="footer-content">
            &copy; All rights reserved against SmProWorld.in
        </div>
    </section>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>

	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"> </script>-->
	<!-- To change dynamic names over a webpage -->
	<script>
		(function() {
			var words = [ "WELCOME", "नमस्ते", "नमस्कार" ];
			i = 0;
			setInterval(function() {
				$(`#words`).fadeOut(function() {
					$(this).html(words[(i = (i + 1) % words.length)]).fadeIn();
				});
			}, 3000);
		})();
	</script>
</body>

</html>