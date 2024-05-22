package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp/ContactServlet")
public class ContactServlet extends HttpServlet {
	
public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		
		String[] newsletter = request.getParameterValues("newsletter");
		String requestMaterials = request.getParameter("request");

		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("email", email);
		request.setAttribute("inquiry", inquiry);
		request.setAttribute("newsletter", newsletter);
		request.setAttribute("requestMaterials", requestMaterials);

		request.getRequestDispatcher("/jsp/result.jsp").forward(request, response);
	}
}
