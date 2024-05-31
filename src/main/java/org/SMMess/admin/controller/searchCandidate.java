package org.SMMess.admin.controller;

import java.io.IOException;
import java.util.List;

import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;
import org.SMMess.admin.service.searchService;
import org.SMMess.admin.service.searchServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class searchCandidate extends HttpServlet {
	
	adminService aService=new adminServiceImpl();
    searchService sService=new searchServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("nameinput");
        String email = request.getParameter("emailinput");
        String contact = request.getParameter("contactinput");
        System.out.println("i am email"+email);
        if (name != null && !name.isEmpty()) {
            // Handle search by name
        	
				
				 RequestDispatcher rd=request.getRequestDispatcher("searchByName.jsp");
				 rd.forward(request, response);
				
           
        }else if (email != null && !email.isEmpty()) {
	       	 RequestDispatcher rd=request.getRequestDispatcher("searchByEmail.jsp");
			 rd.forward(request, response);
        } else if (contact != null && !contact.isEmpty()) {
        	RequestDispatcher rd=request.getRequestDispatcher("searchByContact.jsp");
			 rd.forward(request, response);
        } else {
            // Handle the case where no input was provided
            response.getWriter().println("Please enter a name, email, or contact number to search.");
        }
    }

}
