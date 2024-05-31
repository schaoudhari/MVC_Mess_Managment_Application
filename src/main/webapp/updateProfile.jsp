<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <link rel="stylesheet" href="candidate attendance.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style type="text/css">
    	.main2{
    		margin-top: -600px;
    		
    		}
    	
        .getsidebyside {
            margin-right: 300px;
        }

        .content-box {
            padding: 10px;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
            border: none;
            /* Remove border */
            border-radius: 0;
            /* Remove border radius */
            background-color: #f2f2f2;
            /* Light gray background */
        }

        /* Style for submit button */
        button[type="submit"] {
            width: 100%;
            padding: 10px 0;
            margin-top: 10px;
            border: none;
            border-radius: 0;
            background-color: #5A2323;
            color: #fff;
            cursor: pointer;
          
        }

        /* Style for submit button on hover */
        button[type="submit"]:hover {
     .       background-color: #0056b3;
        }

        #text-heading {
            align-content: center;
        }
    </style>
</head>

<body>
<%@include file="userDashboard.jsp"%>
<%
	String name=request.getParameter("cname");
	String email=request.getParameter("cemail");
	String contact=request.getParameter("contact");
	int age=Integer.parseInt(request.getParameter("cage"));
%>
    <div class="container getsidebyside">
        <div class="main main2">
            <div class="row">
                <div class="col-md-3 mt-1">
                </div>
                <div class="col-md-8 mt-1">
                    <div class="card mb-3 content content-box">
                        <h1 class="m-3 pt-3">Update Your Profile</h1>
                        <div class="card-body">
                            <form action="updateProfile" method="POST">
                                <div class="row">
                                    <div class="col-md-3" id="text-heading">
                                        <h5>Full Name</h5>
                                    </div>

                                    <div class="col-md-9">
                                        <input type="text" name="name" value="<%=name%>">
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-3" id="text-heading">
                                        <h5>Email</h5>
                                    </div>
                                    <div class="col-md-9">
                                        <input type="email" name="email" value="<%=email%>" readonly="readonly">
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-3" id="text-heading">
                                        <h5>Phone</h5>
                                    </div>
                                    <div class="col-md-9">
                                        <input type="text" name="phone" value="<%=contact%>">
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-3" id="text-heading">
                                        <h5>Age</h5>
                                    </div>
                                    <div class="col-md-9">
                                        <input type="text" name="age" value="<%=age%>">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Profile</button>
                            </form>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>

</body>

</html>