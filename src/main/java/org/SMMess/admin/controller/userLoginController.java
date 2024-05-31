package org.SMMess.admin.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.adminModel;
import org.SMMess.admin.model.userModel;
import org.SMMess.admin.service.userService;
import org.SMMess.admin.service.userServiceImpl;

import com.mysql.cj.Session;

public class userLoginController extends HttpServlet {
	userService uService = new userServiceImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("Uname").trim();
		String pass = request.getParameter("pass").trim();
		int result = uService.checkUserLogin(email, pass);
		if (result != 0) {
			HttpSession hs = request.getSession(true);
			hs.setAttribute("userid", result);
			RequestDispatcher rd = request.getRequestDispatcher("userDashboard.jsp");
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
			out.println("window.location.href = 'userLogin.jsp';");
			out.println("}");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
		}

	}

}
