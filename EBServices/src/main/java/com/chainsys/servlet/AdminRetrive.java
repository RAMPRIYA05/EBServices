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

import com.chainsys.dao.Admin;
import com.chainsys.model.Services;

/**
 * Servlet implementation class AdminRetrive
 */
@WebServlet("/AdminRetrive")
public class AdminRetrive extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Admin admin=new Admin();
	public static List<Services> list=new ArrayList<>();
    public static Services services=new Services();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRetrive() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Services services=new Services();
		List<Services> list=new ArrayList<Services>();
		
//		String name=request.getParameter("name");
//		System.out.println(name);
//		String emailId=request.getParameter("emailId");
//	    String password=request.getParameter("password");
//	    String address=request.getParameter("address");
//	    String district=request.getParameter("district");
//	    String state=request.getParameter("state");
//	    String phoneNumber=request.getParameter("phoneNumber");
//	    System.out.println(phoneNumber);
//	    long phoneNumber1=Long.parseLong(phoneNumber);
//	  
//	    String aadhaarNumber=request.getParameter("aadhaarNumber");
//	    long aadhaarNumber1=Long.parseLong(aadhaarNumber);
//	
//	    services.setName(name);
//	    services.setEmailId(emailId);
//	    services.setPassword(password);
//	    services.setAddress(address);
//	    services.setDistrict(district);
//	    services.setState(state);
//	    services.setPhoneNumber(phoneNumber1);
//	    services.setAadhaarNumber(aadhaarNumber1);
//	    services.setUserType("User");
		try {
			
			list=admin.readForm(services);
			System.out.println("ram");
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		System.out.println("priyaa");
		request.setAttribute("list", list);
		RequestDispatcher dispatcher =request.getRequestDispatcher("AdminFormTable.jsp");
		dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
