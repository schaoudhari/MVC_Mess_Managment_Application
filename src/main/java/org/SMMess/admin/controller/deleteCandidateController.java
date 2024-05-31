package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class deleteCandidateController extends HttpServlet {
	adminService aService=new adminServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int cid=Integer.parseInt(request.getParameter("candidateId"));
		boolean b=aService.isDeleteCandidate(cid);
		if(b) {
			RequestDispatcher rd=request.getRequestDispatcher("/viewCandidate.jsp");
			rd.forward(request, response);
			System.out.println("deleted successful");
		}else {
			System.out.println("Some problem is theres");
		}
	}

}
