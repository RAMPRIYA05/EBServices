package com.chainsys.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.model.Services;


@WebServlet("/Bill")
public class Bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Bill() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    Services services=new Services();
	    String emailId=request.getParameter("emailId");
	    int serviceNumber=Integer.parseInt(request.getParameter("serviceNumber"));
	    long aadhaarNumber=Long.parseLong(request.getParameter("aadhaarNumber"));
	    double amount=Double.parseDouble(request.getParameter("amount"));
	    double readingUnits=Double.parseDouble(request.getParameter("readingUnits"));
	    String readingTakenDate=request.getParameter("readingTakenDate");
	    String readingDueDate=request.getParameter("readingDueDate");
	    String serviceType=request.getParameter("serviceType");
	    String status=request.getParameter("status");
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
	    	
	    }
	    catch(SQLException e) {
	    	  e.printStackTrace();
	       }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
