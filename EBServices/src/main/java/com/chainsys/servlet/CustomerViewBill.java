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


import com.chainsys.dao.UserBillImpl;

import com.chainsys.model.Services;


@WebServlet("/CustomerViewBill")
public class CustomerViewBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	

    public CustomerViewBill() {
        super();
        
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	    Services services=new Services();

	    List<Services> list=new ArrayList<>();
	    try {
	    	
	    	UserBillImpl userBill=new UserBillImpl();
			list=userBill.readParticularBill(services);
			request.setAttribute("list", list);
			request.getRequestDispatcher("CustomerAllBillTable.jsp").forward(request, response);
	    }
	    catch(ClassNotFoundException | SQLException e) {
	    	  e.printStackTrace();
	       } 
	    }

	

}
