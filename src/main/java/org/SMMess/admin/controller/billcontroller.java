package org.SMMess.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.SMMess.admin.model.BillModel;
import org.SMMess.admin.service.adminService;
import org.SMMess.admin.service.adminServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class billcontroller extends HttpServlet {
	adminService aService=new adminServiceImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int billno = Integer.parseInt(request.getParameter("billno"));
		String date = request.getParameter("date");
		int price = Integer.parseInt(request.getParameter("price"));
//		System.out.println(billno+"\t"+date+"\t"+price);
		BillModel model = new BillModel(billno, date, price);
		boolean b = aService.addDailyBill(model);
		if (b) {
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='ISO-8859-1'>");
			out.println("<title>Insert title here</title>");
			out.println("</head>");
			out.println("<body onload='myFunction()'>");
			out.println("<script>");
			out.println("function myFunction() {");
			out.println("alert('Bill generated successfull');");
			out.println("window.location.href = 'selectBillType.jsp';");
			out.println("}");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
		} else {
			System.out.println("Bill not added");
		}
	}

}
