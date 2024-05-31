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

        #button {
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
	<%@include file="MenuDashboard.jsp"%>
    <div class="container">
        <div class="col py-3">
            <h2 style='text-align: center; margin-bottom: 18px; color:#1c00b5;'>MENU DETAILS</h2>
            <table class="table viewdata text-center">
                <thead class="thead-light">
                    <tr>
                     <th scope="col">DATE</th>
                        <!-- <th scope="col">Id</th> -->
                        <th scope="col">ITEM1</th>
                        <th scope="col">ITEM2</th>
                        <th scope="col">ITEM3</th>
                        <th scope="col">ITEM4</th>
                        <th scope="col">SWEETS</th>
                       
                    </tr>
                </thead>
                <tbody>
                 <%
						List<menuModel> list=aService.getAllMenu();
						int count=1;
						if(list!=null){
						for(menuModel me: list) {
						%>
                    <tr>
                        <%-- <th scope="row" +>
                            <%=count++%>
                        </th> --%>
                        <td>
                            <%=me.getDate()%>
                        </td>
                        <td>
                            <%=me.getItem1()%>
                        </td>
                        <td>
                            <%=me.getItem2()%>
                        </td>
                        <td>
                            <%=me.getItem3()%>
                        </td>
                        <td>
                            <%=me.getItem4()%>
                        </td>
                        <td>
                            <%=me.getSweets()%>
                        </td>
                        

                    </tr>
                    <%
				}
						}
				%>
                </tbody>
            </table>
            <a href="addmenu.jsp" class="btn btn-add" id="button">Add New Menu</a>

        </div>
    </div>
    </div>
    </section>
    </nav>
    </header>
</body>

</html>