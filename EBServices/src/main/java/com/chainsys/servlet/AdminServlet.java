package com.chainsys.servlet;

import java.io.IOException;
import java.sql.SQLException;
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
	

   
   
    public AdminServlet() {
        super();
        
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession session = request.getSession(true);
		
		Services services=new Services();
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
	    try {
	    	Admin admin=new Admin();
			admin.adminRegister(services);
			session.setAttribute("admin",services);
			response.sendRedirect("adminLogIn.jsp");
		} 
	    catch (ClassNotFoundException | SQLException e) 
	    {
			
			e.printStackTrace();
			response.sendRedirect("adminRegister.jsp");
		}
	    
		}
		
	
		
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String emailId = request.getParameter("emailId");
        

        
        String userType = determineUserType(emailId);

        if (userType != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("emailId", emailId);
            session.setAttribute("loggedIn", true);

            if (userType.equals("admin")) {
                response.sendRedirect("adminHome.jsp");
            } else if (userType.equals("user")) {
                response.sendRedirect("userHome.jsp");
            } else {
               
                response.sendRedirect("adminLogIn.jsp"); 
            }
        } else {
            
            response.sendRedirect("adminLogIn.jsp"); 
        }
    }

    private String determineUserType(String emailId) {
        try {
            Admin admin = new Admin();
            String password1 = admin.adminLogIn(emailId);
            if (password1 != null) {
                return "admin";
            }

            User user = new User();
            String password2 = user.userLogIn(emailId);
            if (password2 != null) {
                return "user";
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
           
        }

        return null; 
    }

	
}
