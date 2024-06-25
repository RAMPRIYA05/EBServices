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
import javax.servlet.http.HttpSession;


import com.chainsys.dao.User;
import com.chainsys.model.Services;


@WebServlet("/ReadCustomerDetails")
public class ReadCustomerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ReadCustomerDetails() {
        super();
        
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("loggedIn") != null && (boolean) session.getAttribute("loggedIn")) {
			Services services = new Services();
			String emailId = (String) session.getAttribute("emailId");
			services.setEmailId(emailId);
			
//read all customer details
			List<Services> list = new ArrayList<>();
			try {
				User user=new User();
				list = user.readAll(services);
			} catch (ClassNotFoundException | SQLException e) {

				e.printStackTrace();
			}
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminAccessCustomer.jsp");
			dispatcher.forward(request, response);
		} else {

			response.sendRedirect("adminLogIn.jsp");
		}
	}
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Services services = new Services();
    	 String emailId=request.getParameter("emailId");
 		services.setEmailId(emailId);
 	 
 	   List<Services> list = new ArrayList<>();
 	    try {
			User user=new User();
 	    	list=user.search(services);
 	   } catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminAccessCustomer.jsp");
		dispatcher.forward(request, response);
 	    }
 	    
	}


