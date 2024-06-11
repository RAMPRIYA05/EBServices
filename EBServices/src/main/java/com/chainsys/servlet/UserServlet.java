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

import com.chainsys.dao.User;

import com.chainsys.model.Services;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static User user=new User();
	public List<Services> list=new ArrayList<Services>();
    public static Services services=new Services();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//       response.getWriter().append("Served at: ").append(request.getContextPath());
//		
//		PrintWriter out=response.getWriter();
//		HttpSession session=request.getSession(false);
//		if(session!=null) {
			
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
	    //String phoneNumber=request.getParameter("phoneNumber");
	    //long phoneNumber1=Long.parseLong(phoneNumber);
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
	    services.setUserType("User");
	    try {
			user.userRegister(services);
			session.setAttribute("user", services);
			response.sendRedirect("UserLogIn.jsp");
			 
		    }
		
      catch(ClassNotFoundException | SQLException e) {
    	  e.printStackTrace();
    	  response.sendRedirect("UserRegister.jsp");
       }
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
			
		
		Services services=new Services();
		String emailId=request.getParameter("emailId");
		String password=request.getParameter("password");
		services.setEmailId(emailId);
		
		try {
			String password1=user.userLogIn(emailId);
			if(password.equals(password1))
			{
				HttpSession session = request.getSession(true); 
	            session.setAttribute("emailId", emailId);
	            session.setAttribute("loggedIn", true);
	            
				
			
				System.out.println("Successfully LoggedIn");
				response.sendRedirect("UserHome.jsp");

				
			}
			else
			{
				response.sendRedirect("UserLogIn.jsp");
			}
			
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}
	
	
}
