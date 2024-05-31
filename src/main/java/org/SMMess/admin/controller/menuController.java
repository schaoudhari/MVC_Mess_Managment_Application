package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.menuModel;
import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class menuController extends HttpServlet {
	adminService aService=new adminServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String item1=request.getParameter("item1");
		String item2=request.getParameter("item2");
		String item3=request.getParameter("item3");
		String item4=request.getParameter("item4");
		String sweet=request.getParameter("sweets");
		String date=request.getParameter("date");
		menuModel model=new menuModel(item1, item2, item3, item4, sweet,date);
		boolean b=aService.addMenu(model);
		if(b) {
			RequestDispatcher rd=request.getRequestDispatcher("/viewMenu.jsp");
			rd.forward(request, response);
		}else {
			System.out.println("Menu not added");
		}
	}

}
