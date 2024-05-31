package org.SMMess.admin.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.service.searchService;
import org.SMMess.admin.service.searchServiceImpl;

public class markAttendanceController extends HttpServlet {
	
	searchService sService=new searchServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		if(request.getParameter("uID")!=null) {
			int uID=Integer.parseInt(request.getParameter("uID"));
			String dat=request.getParameter("date");
			System.out.println(uID);
			
			boolean b=sService.markAttendance(uID, dat);
			if(b) {
				out.println("<html>");
				out.println("<head>");
				out.println("<meta charset='ISO-8859-1'>");
				out.println("<title>Insert title here</title>");
				out.println("</head>");
				out.println("<body onload='myFunction()'>");
				out.println("<script>");
				out.println("function myFunction() {");
				out.println("alert('Attendance Marked');");
				out.println("window.location.href = 'markAttendance.jsp';");
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
				out.println("alert('Attendance Not Marked');");
				out.println("window.location.href = 'markAttendance.jsp';");
				out.println("}");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			}
			
		}else {
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='ISO-8859-1'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body onload='myFunction()'>");
			out.println("<script>");
			out.println("function myFunction() {");
			out.println("alert('Check box not selected');");
			out.println("window.location.href = 'markAttendance.jsp';");
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
