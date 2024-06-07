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

import com.chainsys.dao.UserBillImpl;
import com.chainsys.dao.ViewBill;
import com.chainsys.model.Services;

/**
 * Servlet implementation class CustomerViewBill
 */
@WebServlet("/CustomerViewBill")
public class CustomerViewBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	List<Services> list=new ArrayList<Services>();
	ViewBill viewBill=new ViewBill();
	UserBillImpl userBill=new UserBillImpl();
    public CustomerViewBill() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    Services services=new Services();
//	    String emailId=request.getParameter("emailId");
//	    int serviceNumber=Integer.parseInt(request.getParameter("serviceNumber"));
//	    long aadhaarNumber=Long.parseLong(request.getParameter("aadhaarNumber"));
//	    double amount=Double.parseDouble(request.getParameter("amount"));
//	    double readingUnits=Double.parseDouble(request.getParameter("readingUnits"));
//	    String readingTakenDate=request.getParameter("readingTakenDate");
//	    String readingDueDate=request.getParameter("readingDueDate");
//	    String serviceType=request.getParameter("serviceType");
//	    String status=request.getParameter("status");
//	    String address=request.getParameter("address");
//	    
//	    services.setEmailId(emailId);
//	    services.setServiceNumber(serviceNumber);
//	    services.setAadhaarNumber(aadhaarNumber);
//	    services.setAmount(amount);
//	    services.setReadingUnits(readingUnits);
//	    services.setReadingTakenDate(readingTakenDate);
//	    services.setReadingDueDate(readingDueDate);
//	    services.setServiceType(serviceType);
//	    services.setStatus(status);
//	    services.setAddress(address);
//	    HttpSession session=request.getSession();
//	    try {
//	    	session.setAttribute("emailId", emailId);
//	    	viewBill.insertIntoBill(services);
////            List<Services> list=new ArrayList<Services>();
////			list=viewBill.readForm(services);
////			request.setAttribute("list", list);
////			request.getRequestDispatcher("ViewBillTable.jsp").forward(request, response);
//	    	doPost(request,response);
//	    }
//	    catch(SQLException e) {
//	    	  e.printStackTrace();
//	       } catch (ClassNotFoundException e) {
//			
//			e.printStackTrace();
//		}
	    List<Services> list=new ArrayList<Services>();
	    try {
	    	//userBill.insertIntoBill(services);
            
			list=userBill.readParticularBill(services);
			request.setAttribute("list", list);
			request.getRequestDispatcher("CustomerAllBillTable.jsp").forward(request, response);
	    }
	    catch(SQLException e) {
	    	  e.printStackTrace();
	       } catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Services services=new Services();
//		List<Services> list=new ArrayList<Services>();
//		try {
//			list=viewBill.readForm(services);
//		} catch (ClassNotFoundException | SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		request.setAttribute("list", list);
//		request.getRequestDispatcher("ViewBillTable.jsp").forward(request, response);		
		//doGet(request, response);
		 response.getWriter().append("Served at: ").append(request.getContextPath());
			
			PrintWriter out=response.getWriter();
			HttpSession session=request.getSession(false);
			if(session!=null) {
		Services services=new Services();
		response.getWriter().append("Served at: ").append(request.getContextPath());
		List<Services> list=new ArrayList<Services>();
		String emailId=request.getParameter("emailId");
		services.setEmailId(emailId);
		try {
			if(emailId.equals(userBill.ViewBillLogIn(emailId)))
			{
				System.out.println("viewBill");
			
		
			
		
			//userBill.insertIntoBill(services);
			list=userBill.readParticularBill(services);
			request.setAttribute("list", list);
			RequestDispatcher dispatcher =request.getRequestDispatcher("CustomerBillTable.jsp");
			dispatcher.forward(request, response);
			}
			else {
				response.sendRedirect("ViewBillLogIn.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
			}
			else {
				response.sendRedirect("ViewBillLogIn.jsp");
			}
		
		
	}
	

}
