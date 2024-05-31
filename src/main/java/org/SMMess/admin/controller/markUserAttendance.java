package org.SMMess.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.SMMess.admin.service.userService;
import org.SMMess.admin.service.userServiceImpl;

public class markUserAttendance extends HttpServlet {
	userService uService=new userServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int uid=Integer.parseInt(request.getParameter("uid"));
		String date=request.getParameter("date");
		String status=request.getParameter("status");
		boolean b=uService.addUserAttendance(uid,date,status);
		if(b) {
//			System.out.println("Successfull");
			RequestDispatcher rd=request.getRequestDispatcher("userDashboard.jsp");
			rd.forward(request, response);
		}else {
			System.out.println("not saved");
		}
	}
}
