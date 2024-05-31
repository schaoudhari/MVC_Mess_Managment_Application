package org.SMMess.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.userModel;
import org.SMMess.admin.service.userService;
import org.SMMess.admin.service.userServiceImpl;

public class updateProfile extends HttpServlet {
	userService uService=new userServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name").trim();
		String  email= request.getParameter("email").trim();
		String contact=request.getParameter("phone");
		int age=Integer.parseInt(request.getParameter("age"));
		userModel model=new userModel();
		model.setName(name);
		model.setEmail(email);
		model.setContact(contact);
		model.setAge(age);
		boolean b=uService.updateUserProfile(model);
		if(b) {
			RequestDispatcher rd= request.getRequestDispatcher("profile.jsp");
			rd.forward(request, response);
			
		}else {
			out.println("Error ");
		}
	}

}
