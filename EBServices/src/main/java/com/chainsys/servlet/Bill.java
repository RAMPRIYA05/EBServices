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

import com.chainsys.dao.UserBillImpl;
import com.chainsys.model.Services;


@WebServlet("/Bill")
public class Bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
    public Bill() {
        super();
        
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//enter customer bill from admin side
		
	    Services services=new Services();
	    String emailId=request.getParameter("emailId");
	    int serviceNumber=Integer.parseInt(request.getParameter("serviceNumber"));
	    long aadhaarNumber=Long.parseLong(request.getParameter("aadhaarNumber"));
	    double amount=Double.parseDouble(request.getParameter("amount"));
	    double readingUnits=Double.parseDouble(request.getParameter("readingUnits"));
	    String readingTakenDate=request.getParameter("readingTakenDate");
	    String readingDueDate=request.getParameter("readingDueDate");
	    String serviceType=request.getParameter("serviceType");
	    
	    String address=request.getParameter("address");
	    
	    services.setEmailId(emailId);
	    services.setServiceNumber(serviceNumber);
	    services.setAadhaarNumber(aadhaarNumber);
	    services.setAmount(amount);
	    services.setReadingUnits(readingUnits);
	    services.setReadingTakenDate(readingTakenDate);
	    services.setReadingDueDate(readingDueDate);
	    services.setServiceType(serviceType);
	    
	    
	    services.setAddress(address);
	    try {	    	
	    	UserBillImpl userBill=new UserBillImpl();
	            userBill.insertIntoBill(services);
	            List<Services> list;
				list=userBill.readParticularBill(services);
				request.setAttribute("list", list);
				request.getRequestDispatcher("customerAllBillTable.jsp").forward(request, response);
	          
	    }
	    catch(ClassNotFoundException | SQLException e  ) {
	    	  e.printStackTrace();
	       } 
	}

	
	
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false); // Retrieve existing session, if any
		if (session != null && session.getAttribute("loggedIn") != null && (boolean) session.getAttribute("loggedIn")) {

			Services services = new Services();
			String emailId = (String) session.getAttribute("emailId");
			services.setEmailId(emailId);
			List<Services> list = new ArrayList<>();

			try {
				UserBillImpl userBill=new UserBillImpl();
				list = userBill.readParticularBill(services);
				request.setAttribute("list", list);
				RequestDispatcher dispatcher = request.getRequestDispatcher("customerBillTable.jsp");
				dispatcher.forward(request, response);

			} catch (ClassNotFoundException | SQLException e) {

				e.printStackTrace();
			}

		} 
		else {
			response.sendRedirect("userHome.jsp");
		}
	}
}
