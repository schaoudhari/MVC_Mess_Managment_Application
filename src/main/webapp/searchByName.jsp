<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="jakarta.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page
	import="java.util.*,org.SMMess.admin.service.*,org.SMMess.admin.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#button {
            background-color: #1c00b5;
            color: white;
            border-radius: 30px;
            margin-right: 20px;
        }
</style>
</head>
<body>
	<%@include file="markAttendance.jsp"%>
	<%!adminService aService = new adminServiceImpl();
	searchService sService = new searchServiceImpl();%>
	<%
	String name = request.getParameter("nameinput");
	%>
	<div class="container">
	<form action="markAttendanceController" name="frm" method="get" class="formarea">
	<table class="table viewdata text-center">
		<thead class="thead-light">
			<tr>
				<th scope="col">Name</th>
				<!-- <th scope="col">Id</th> -->
				<th scope="col">Email</th>
				<th scope="col">Contact</th>
				<th scope="col">Aadhar</th>
				<th scope="col">Status</th>
				

			</tr>
		</thead>
		<tbody>
			<%
			List<candidateModel> canList = aService.searchByname(name);

			if (canList != null) {
				for (candidateModel me : canList) {
			%>
				<tr>
					<td><%=me.getName() %></td>
					<td><%=me.getEmail()%></td>
					<td><%=me.getContact() %></td>
					<td><%=me.getAadhar() %></td>
					<td><input type="checkbox" name="uID" value="<%=me.getId()%>">Present</td>
					
				</tr>
			<%
			}
			}
			%>
			<input type="hidden" name="date" id="date" readonly required>
		</tbody>
		
		</table>
		<button type="submit" id="button" >Mark Attendance</button>
		</form>
		</div>
		<script type="text/javascript">
		let date = new Date();
		let formattedDate = date.toISOString().slice(0, 10); // Get YYYY-MM-DD format
		document.getElementById("date").value = formattedDate;
		</script>
</body>
</html>