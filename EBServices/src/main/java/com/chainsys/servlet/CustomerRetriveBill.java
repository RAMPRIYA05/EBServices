package com.chainsys.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.UserBillImpl;
import com.chainsys.dao.ViewBill;
import com.chainsys.model.Services;

@WebServlet("/CustomerRetriveBill")
public class CustomerRetriveBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ViewBill viewBill=new ViewBill();
       UserBillImpl userBill=new UserBillImpl();

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session=request.getSession();
//		try {
//			String getEmailId=(String)session.getAttribute("emailId");
			Services services=new Services();
			List<Services> list=new ArrayList<Services>();
			try {
				list=userBill.readForm(services);
				//list=viewBill.readForm(services);
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			request.setAttribute("list", list);
			request.getRequestDispatcher("CustomerBillTable.jsp").forward(request, response);	
//		}
//		catch(Exception e) {
//			System.out.println(e);
//		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}