package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.userModel;
import org.SMMess.admin.service.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class userAddController extends HttpServlet {
	userService uService=new userServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("Uname");
		String email=request.getParameter("Email");
		String Unumber=request.getParameter("number");
		int  Uage=Integer.parseInt(request.getParameter("age"));
		
		userModel model=new userModel(Uage, Unumber, uname, Uage, email);
		boolean b=uService.isAddNewUser(model);
		if(b) {
			RequestDispatcher rd=request.getRequestDispatcher("/userLogin.jsp");
			rd.forward(request, response);
			
		}else {
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='ISO-8859-1'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body onload='myFunction()'>");
			out.println("<script>");
			out.println("function myFunction() {");
			out.println("alert('invalid Credential details');");
			out.println("window.location.href = 'userLogin.jsp';");
			out.println("}");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
