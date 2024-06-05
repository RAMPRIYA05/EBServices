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
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Services services=new Services();
	    String name=request.getParameter("name");
	    String emailId=request.getParameter("emailId");
	    String password=request.getParameter("password");
	    //String reEnterPassword=request.getParameter("reEnterPassword");
	    String address=request.getParameter("address");
	    String district=request.getParameter("district");
	    String state=request.getParameter("state");
	    String phoneNumber=request.getParameter("phoneNumber");
	    System.out.println(phoneNumber);
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
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	    response.sendRedirect("AdminLogIn.jsp");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
				
				System.out.println("Successfully LoggedIn");
				
				List<Services> list=admin.readForm(services);
				request.setAttribute("list", list);
				RequestDispatcher dispatcher =request.getRequestDispatcher("AdminFormTable.jsp");
				dispatcher.forward(request, response);
				
				
			}
			else
			{
				response.sendRedirect("AdminLogIn.jsp");
			}
			//retrive(request,response);
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

//	protected void retrive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
//		Services services=new Services();
//		List<Services> list=new ArrayList<>();
//		
//		list=admin.readForm(services);
//		request.setAttribute("list", list);
//	    request.getRequestDispatcher("FormTable.jsp").forward(request, response);
//		
//	}	
}