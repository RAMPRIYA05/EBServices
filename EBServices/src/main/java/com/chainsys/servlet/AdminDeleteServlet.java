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
	public static Admin admin=new Admin();
    public List<Services> list=new ArrayList<Services>();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Services services=new Services();
		String delete=request.getParameter("delete");
		if(delete!=null && delete.equals("Delete"))
		{
			String emailId=request.getParameter("deleteemailId");
			services.setEmailId(emailId);
			try {
				admin.deleteForm(services);
				System.out.println("Row deleted");
			}
			catch (ClassNotFoundException | SQLException e) 
            {
				e.printStackTrace();
            }
            try 
            {
            	list=admin.readForm(services);
            System.out.println("Displayed successfully..");
        } 
        catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
        request.setAttribute("list", list);
        request.getRequestDispatcher("AdminFormTable.jsp").forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Services services=new Services();	
		String name=request.getParameter("name");
	    String emailId=request.getParameter("emailId");
	    String password=request.getParameter("password");
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
	    services.setUserType("User");
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
	    RequestDispatcher dispatcher = request.getRequestDispatcher("AdminFormTable.jsp");
        dispatcher.forward(request, response);
		
	}

}
