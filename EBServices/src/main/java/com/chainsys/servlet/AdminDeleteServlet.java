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
 * Servlet implementation class AdminDeleteServlet
 */
@WebServlet("/AdminDeleteServlet")
public class AdminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteServlet() {
        super();
       
    }

	
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Services services=new Services();
		Admin admin=new Admin();
		String delete=request.getParameter("delete");
		if(delete!=null && delete.equals("Delete"))
		{
			String emailId=request.getParameter("deleteemailId");
			services.setEmailId(emailId);
			try {
				admin.deleteForm(services);
				List<Services> list;

         	list=admin.readForm(services);
	          
	            request.setAttribute("list", list);
	            request.getRequestDispatcher("adminFormTable.jsp").forward(request, response);
			}
			catch (ClassNotFoundException | SQLException e) 
            {
				e.printStackTrace();
            }
            
        
			
		}
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Services services=new Services();	
		Admin admin=new Admin();
		String name=request.getParameter("name");
	    String emailId=request.getParameter("emailId");
	    String password=request.getParameter("password");
	    String address=request.getParameter("address");
	    String district=request.getParameter("district");
	    String state=request.getParameter("state");
	   
	    
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
	    List<Services> list=new ArrayList<>();

	    try {
	    	admin.updateForm(services);
	    	
	    }
	    catch(ClassNotFoundException | SQLException e){
	    	e.printStackTrace();
	    }
	    try {
			list=admin.readForm(services);	
			
	        
			 
		}
		catch (ClassNotFoundException | SQLException e) {
	          
	           e.printStackTrace();
	       }
	    request.setAttribute("list", list);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("adminFormTable.jsp");
        dispatcher.forward(request, response);
		
	}

}
