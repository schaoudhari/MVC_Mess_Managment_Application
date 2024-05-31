package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.adminModel;
import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class adminLoginController extends HttpServlet {
	adminService aService = new adminServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("Uname");
		String pass = request.getParameter("pass");
		adminModel model = new adminModel(uname, pass);
		boolean b = aService.checkAdminLogin(model);
		if (b) {
			HttpSession hs = request.getSession(true);
			hs.setAttribute("pass", model);
			RequestDispatcher rd = request.getRequestDispatcher("/adminDashboard.jsp");
			rd.forward(request, response);
		} else {
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='ISO-8859-1'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body onload='myFunction()'>");
			out.println("<script>");
			out.println("function myFunction() {");
			out.println("alert('Invalid Credential Details');");
			out.println("window.location.href = 'login.jsp';");
			out.println("}");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
