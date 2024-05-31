package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class updateCandidate extends HttpServlet {
	adminService aService=new adminServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int cid=Integer.parseInt(request.getParameter("canId"));
		String name=request.getParameter("updatedCName");
		String phone=request.getParameter("updatedCPhone");
		String email=request.getParameter("UpdatedCEmail");
		String aadhar=request.getParameter("UpdatedCAadhar");
		candidateModel model=new candidateModel();
		model.setId(cid);
		model.setName(name);
		model.setContact(phone);
		model.setEmail(email);
		model.setAadhar(aadhar);
		boolean b=aService.isUpdateCandidate(model);
		if(b) {
			RequestDispatcher rd=request.getRequestDispatcher("/viewCandidate.jsp");
			rd.forward(request, response);
//			System.out.println("Data updated");
		}else {
			System.out.println("some problem in update");
		}
	}

}
