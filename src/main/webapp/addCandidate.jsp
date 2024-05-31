<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Candidate</title>
    <link rel="stylesheet" href="css/addCandidate.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>

<body>
<%@include file="candidateDashboard.jsp"%>
    <div class="mainbody">
        <div class="container form">
            <div class="contact_box">
                <div class="contact-left">
                    <h3>Add New Candidate</h3>
                    <form action="addCandidate" method="post">
                        <div class="input-row">
                            <div class="input-group">
                                <label for="name">Name</label>
                                <input type="text" name="cname" id="" placeholder="Enter Your name" required>
                            </div>
                            <div class="input-group">
                                <label for="name">Phone</label>
                                <input type="text" name="cphone" id="" placeholder="+1234567890" required>
                            </div>
                        </div>
                        <div class="input-row">
                            <div class="input-group">
                                <label for="name">Email</label>
                                <input type="email" name="cemail" id="" placeholder="abc@gmail.com" required>
                            </div>
                            <div class=" input-group">
                                <label for="name">Aadhar Card Number</label>
                                <input type="text" name="caadhar" id="" placeholder="1234-1234-1234" required>
                            </div>
                        </div>
                        <div class="input-row">
                            <div class="input-group">
                                <label for="name">Advanced amount</label>
                                <input type="number" name="adv" id="" placeholder="$0000">
                            </div>
                        </div>
                    
                        <button type="submit" id="button">Add Candidate</button><!-- when data is available then visible to store the data -->
                    </form>
                </div>

            </div>

        </div>
    </div>
    </div>
	</section>
	</nav>
    </header>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
    
</body>

</html>