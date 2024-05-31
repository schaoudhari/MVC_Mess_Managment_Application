<%@page import="org.SMMess.admin.service.userServiceImpl"%>
<%@page import="org.SMMess.admin.service.userService"%>
<%@page import="org.SMMess.admin.model.userModel"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>|User Dashboard|</title>
    <link rel="stylesheet" href="navsideDashboard.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style type="text/css">
    	.getsidebyside{
    		margin-top: -650px;
    		margin-right: 300px;
    	}
    	.content-box{
    		padding: 10px;
    	}
    	.btn a{
    		color: black;
    		font-size: 18px;
    		text-decoration: none;
    	}
    	.btn a:hover {
    		color: #fff;
    		text-transform: uppercase;
    		
    	}
    	
    </style>
</head>

<body>
<%-- <%! userModel umodel; %>
<%
int userId = Integer.parseInt(session.getAttribute("userid").toString());
	userService uService= new userServiceImpl();
	umodel=uService.getProfile(userId);
	%>
	 --%>
	<%@include file="userDashboard.jsp"%>
    <div class="container getsidebyside">
        <div class="main">
            <div class="row">
              <div class="col-md-3 mt-1">
                    
                </div> 
                <div class="col-md-8 mt-1">
                    <div class="card mb-3 content content-box">
                        <h1 class="m-3 pt-3">Profile</h1>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Full Name</h5>
                                </div>
                                
                                <div class="col-md-9" name="cname">
                                    <%=umodel.getName() %>
                                </div>
                            </div>
                            <hr> 
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Email</h5>
                                </div>
                                <div class="col-md-9" name="cemail">
                                    <%=umodel.getEmail() %>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Phone</h5>
                                </div>
                                <div class="col-md-9" name="ccontact">
                                    <%=umodel.getContact() %>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Age</h5>
                                </div>
                                <div class="col-md-9" name="cage">
                                    <%=umodel.getAge() %>
                                </div>
                            </div>
                        </div>
                        <button class="btn	" onclick="updateAttendance()"><a href="updateProfile.jsp?cname=<%=umodel.getName()%>&cemail=<%=umodel.getEmail()%>&contact=<%=umodel.getContact()%>&cage=<%=umodel.getAge()%>"> Update Profile</a></button>
                    </div>
                    <div class="card mb-3 content content-box">
                        <h1>Recent Attendance</h1>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Paid amount</h5>
                                </div>
                                <div class="col-md-9">
                                   1250
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Remaining amount</h5>
                                </div>
                                <div class="col-md-9">
                                    1750
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
	</ul>
	</nav>
	</div>

</body>

</html>
