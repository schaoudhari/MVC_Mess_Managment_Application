package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.candidateModel;
import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class addCandidate extends HttpServlet {
	adminService aService=new adminServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("cname");
		String phone=request.getParameter("cphone");
		String email=request.getParameter("cemail");
		String aadhar=request.getParameter("caadhar");
		int advance=Integer.parseInt(request.getParameter("adv"));
		candidateModel model=new candidateModel(name, phone, email, aadhar,advance);
		boolean b=aService.addCandidate(model);
		if(b) {
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='ISO-8859-1'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body onload='myFunction()'>");
			out.println("<script>");
			out.println("function myFunction() {");
			out.println("alert('Candidate Added');");
			out.println("window.location.href = 'viewCandidate.jsp';");
			out.println("}");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
		}else {
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='ISO-8859-1'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body onload='myFunction()'>");
			out.println("<script>");
			out.println("function myFunction() {");
			out.println("alert('Candidate Not Added');");
			out.println("window.location.href = 'addCandidate.jsp';");
			out.println("}");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
		}
		
	}

}
 