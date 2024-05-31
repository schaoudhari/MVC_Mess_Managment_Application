<%@page import="org.SMMess.admin.service.adminServiceImpl"%>
<%@page import="org.SMMess.admin.service.adminService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.SMMess.admin.service.*,java.util.*,org.SMMess.admin.model.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .viewdata {
            width: 100%;
            margin: 0 auto;
        }

        .btn-add {
            display: block;
            margin: 20px auto;
            width: 200px;
            
        }
        #button{
        	background-color: #1c00b5;
        	color: white;
        	border-radius: 30px;
        	margin-right: 20px;
        }

        thead,
        tbody {
            text-align: center;
        }
    </style>
</head>

<body>

	<%!adminService aService=new adminServiceImpl();%>
	<%@include file="candidateDashboard.jsp"%>
    <div class="container">
        <div class="col py-3">
            <h2 style='text-align: center; margin-bottom: 18px; color:#1c00b5;'>CANDIDATE DETAILS</h2>
            <table class="table viewdata text-center">
                <thead class="thead-light">
                    <tr>
                        <!-- <th scope="col">Id</th> -->
                        <th scope="col">Name</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Email</th>
                        <th scope="col">Aadhar no</th>
                        <th scope="col">Advanced amt</th>
                        <th scope="col">Update</th>
                        <th scope="col">Delete</th>
                        
                    </tr>
                </thead>
                <tbody>
              <%
						List<candidateModel> lst=aService.getAllCandidates();
						int count=1;
						if(lst!=null){
							for(candidateModel m : lst) {
								%>
								<tr>
									<%-- <th scope="row"+><%=count++%></th> --%>
									<td><%=m.getName()%></td>
									<td><%=m.getContact()%></td>
									<td><%=m.getEmail()%></td>
									<td><%=m.getAadhar()%></td>
									<td><%=m.getAdvanced()%></td>
								<td><a href="updateCandidate.jsp?CandidateId=<%=m.getId() %>&candidateName=<%=m.getName()%> &candidateEmail=<%=m.getEmail() %> &candidatePhone=<%=m.getContact() %> &candidateAadhar=<%=m.getAadhar() %>&candidateadv=<%=m.getAdvanced() %>" title="Update"><i class="fas fa-edit"></i></a></td>
								<td><a href='deleteCandidateController?candidateId=<%=m.getId() %>' title="Delete"><i class="fas fa-trash-alt"></i></a></td>
							</tr>
						<%
						}
						
				}
				%>
                
                </tbody>
            </table>
            <a href="addCandidate.jsp" class="btn btn-add" id="button">Add New Candidate</a>
            <a href="markAttendance.jsp" class="btn btn-add" id="button">Mark Attendance</a>
        </div>
    </div>
      </div>
	</section>
	</nav>
    </header>
</body>

</html>