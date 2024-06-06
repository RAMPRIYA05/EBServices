package com.chainsys.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.dao.User;
import com.chainsys.model.Services;

/**
 * Servlet implementation class ReadCustomerDetails
 */
@WebServlet("/ReadCustomerDetails")
public class ReadCustomerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public User user=new User();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadCustomerDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Services services=new Services();
		response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Services> list=new ArrayList<Services>();
		try {
			list=user.readAll(services);
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		request.setAttribute("list", list);
		RequestDispatcher dispatcher =request.getRequestDispatcher("AdminAccessCustomer.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
