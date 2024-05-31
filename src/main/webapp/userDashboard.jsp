<%@page import="org.SMMess.admin.model.userModel"%>

<%@page import="org.SMMess.admin.service.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="sampleDashboard.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        /* CSS Styles */
        * {
            margin: 0;
            padding: 0;
            outline: none;
            border: none;
            text-decoration: none;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: rgb(229, 219, 198);
        }

        nav ul li {
            list-style: none;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
        }

        nav {
            position: sticky;
            top: 0;
            bottom: 0;
            height: 100vh;
            left: 0;
            width: 130px;
            /* Adjusted width */
            background: #5a2323;
            overflow: hidden;
            transition: width 1s;
            /* Changed transition property */
        }

        nav:hover {
            width: 300px;
            /* Removed unnecessary transition */
        }

        .logo {
            text-align: center;
            display: flex;
            margin: 10px 0 0 10px;
            padding-bottom: 3rem;
        }

        .logo span {
            font-weight: bold;
            padding-left: 15px;
            font-size: 18px;
            text-transform: uppercase;
        }

        .logo img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
        }

        a {
            position: relative;
            width: 100%;
            font-size: 14px;
            color: rgb(85, 83, 83);
            display: table;
            margin-top: 5px;
            padding: 10px;
        }

        nav .fas {
            position: relative;
            width: 70px;
            height: 40px;
            top: 10px;
            font-size: 20px;
            text-align: center;
        }

        .nav-item {
            position: relative;
            margin-left: 10px;
            top: 12px;
        }

        a:hover {
            background: #8c3838;
            transition: background 0.5s;
            /* Specified property for smoother transition */
        }

        a:hover i {
            color: #34af6d;
        }

        .logout {
            position: absolute;
            bottom: 0;
        }

        nav ul li a {
            position: relative;
            /* Add this */
            display: flex;
            /* Add this */
            align-items: center;
            /* Add this */
            padding: 20px;
            /* Add this */
        }

        nav ul li a span.text {
            margin-left: 10px;
            /* Adjust this as needed */
        }

        nav ul li a i {
            flex-shrink: 0;
            /* Add this */
        }
    </style>
</head>

<body>
<%! userModel umodel; %>
<%
int userId = Integer.parseInt(session.getAttribute("userid").toString());
userService uService= new userServiceImpl();
umodel=uService.getProfile(userId);
	%>
    <div class="containe">
        <nav>
            <ul>
                <li>
                    <a href="#" class="logo">
                        <img src="images/Sm logo.png">
                        <span class="nav-item"><%=umodel.getName() %></span>
                    </a>
                </li>
                <li>
                    <a href="#"><i class="fas fa-menorah"></i><span class="text"> Dashboard</span></a>
                </li>
                <li>
                    <a href="#"><i class="fas fa-comment"></i><span class="text"> Message</span></a>
                </li>
                <li>
                    <a href="userAttendance.jsp"><i class="fas fa-chart-bar"></i><span class="text">Mark Attendance</span></a>
                </li>
               
                <li>
                    <a href="profile.jsp?uid"><i class="fas fa-cog"></i><span class="text"> Profile</span></a>
                </li>
                <li>
                    <a href="logout1" class="logout"><i class="fas fa-sign-out-alt"></i><span class="text"> Log-Out</span></a>
                </li>
            </ul>
        </nav>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>

</html>