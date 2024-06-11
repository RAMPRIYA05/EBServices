package com.chainsys.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.chainsys.dao.Admin;
import com.chainsys.dao.User;
import com.chainsys.model.Services;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Admin admin=new Admin();
	public static List<Services> list=new ArrayList<>();
    public static Services services=new Services();
   
    public AdminServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		
		Services services=new Services();
	    String name=request.getParameter("name");
	    String emailId=request.getParameter("emailId");
	    String password=request.getParameter("password");
	    String address=request.getParameter("address");
	    String district=request.getParameter("district");
	    String state=request.getParameter("state");
	   // String phoneNumber=request.getParameter("phoneNumber");
	    long phoneNumber1=Long.parseLong(request.getParameter("phoneNumber"));
	    String aadhaarNumber=request.getParameter("aadhaarNumber");
	    long aadhaarNumber1=Long.parseLong(aadhaarNumber);
	   
	    
	    services.setName(name);
	    services.setEmailId(emailId);
	    services.setPassword(password);
	    services.setAddress(address);
	    services.setDistrict(district);
	    services.setState(state);
	    services.setPhoneNumber(phoneNumber1);
	    services.setAadhaarNumber(aadhaarNumber1);
	    services.setUserType("Admin");
	    try {
			admin.adminRegister(services);
			session.setAttribute("admin", services);
			response.sendRedirect("AdminLogIn.jsp");
		} 
	    catch (ClassNotFoundException | SQLException e) 
	    {
			
			e.printStackTrace();
			response.sendRedirect("AdminRegister.jsp");
		}
	    
		}
		
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		Services services=new Services();
		String emailId=request.getParameter("emailId");
		String password=request.getParameter("password");
		
		services.setEmailId(emailId);
		services.setPassword(password);
		services.setUserType("Admin");
		
		try {
			String password1=admin.adminLogIn(emailId);
			if(password.equals(password1))
			{
				HttpSession session = request.getSession(true); 
	            session.setAttribute("emailId", emailId);
	            session.setAttribute("loggedIn", true);
	            
				System.out.println("Successfully LoggedIn");
				response.sendRedirect("AdminHome.jsp");
				System.out.println("Home");
				
//				List<Services> list=new ArrayList<Services>();
//				list=admin.readForm(services);
//				request.setAttribute("list", list);				
//			    RequestDispatcher dispatcher =request.getRequestDispatcher("AdminFormTable.jsp");
//				dispatcher.forward(request, response);
				
				
				
				
			}
			else
			{
				response.sendRedirect("AdminLogIn.jsp");
			}
			
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
	}

	
}
