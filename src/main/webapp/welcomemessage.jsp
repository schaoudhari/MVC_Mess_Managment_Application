<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#welcome{
			display: flex;
			align-items: center;
			justify-content: center;
			margin-top: 100px;
		}
		#welcome h1{
			font-size: 54px;
			color: #5e5c5c;
		}
		#welcome h1 span{
			color: red;
		}
</style>
</head>
<body>
<%@include file="selectBillType.jsp"%>
<section>
		<div id="welcome"><h1>Welcome Admin to <span>SMMess</span></h1></div>
	</section>
</body>
</html>