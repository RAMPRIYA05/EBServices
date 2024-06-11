package com.chainsys.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.UserBillImpl;
import com.chainsys.dao.ViewBill;
import com.chainsys.model.Services;

@WebServlet("/CustomerRetriveBill")
public class CustomerRetriveBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ViewBill viewBill=new ViewBill();
       UserBillImpl userBill=new UserBillImpl();

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("loggedIn") != null && (Boolean) session.getAttribute("loggedIn")) {
			Services services = new Services();
			
			String emailId = (String) session.getAttribute("emailId");
			services.setEmailId(emailId);
			
			List<Services> list = new ArrayList<Services>();
			try {
				list = userBill.readForm(services);

			} catch (ClassNotFoundException | SQLException e) {

				e.printStackTrace();
			}
			request.setAttribute("list", list);
			request.getRequestDispatcher("CustomerBill.jsp").forward(request, response);
		} else {

			response.sendRedirect("AdminLogIn.jsp");
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
