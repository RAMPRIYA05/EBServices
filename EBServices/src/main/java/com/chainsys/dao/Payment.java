package com.chainsys.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import java.util.ArrayList;
import java.util.List;

import com.chainsys.model.Services;
import com.chainsys.util.JDBCConnection;

public class Payment implements PaymentDAO {
	

    
	@Override
	public void payBill(Services services) throws ClassNotFoundException, SQLException {
		Connection connection=JDBCConnection.getConnection();
		String register="insert into payment(service_number,payment_id,payment_date,amount,account_number,pay_amount,reading_due_date,total_amount)values(?,?,?,?,?,?,?,?)";
		PreparedStatement prepareStatement=connection.prepareStatement(register);
		
		
		prepareStatement.setInt(1, services.getServiceNumber());
		 
		prepareStatement.setInt(2, services.getPaymentId());
		prepareStatement.setString(3, services.getPaymentDate());
		prepareStatement.setDouble(4, services.getAmount());
		prepareStatement.setLong(5,services.getAccountNumber());
		prepareStatement.setDouble(6, services.getPayAmount());
		prepareStatement.setString(7,services.getReadingDueDate());
		prepareStatement.setDouble(8, services.getTotalAmount());
		prepareStatement.executeUpdate();
		
		 
	}

	@Override
	public List<Services> readForm(Services services)throws ClassNotFoundException, SQLException {
		
		List<Services> list=new ArrayList<>();
		try {
		Connection connection = JDBCConnection.getConnection();
  	    String read="SELECT service_number,payment_id,payment_date,amount,account_number,pay_amount,reading_due_date,total_amount FROM payment";
  	    PreparedStatement prepareStatement = connection.prepareStatement(read);

        ResultSet rows = prepareStatement.executeQuery();
     
  	   while(rows.next())
       {
         
         
         Services service =new Services();
         
         service.setServiceNumber(rows.getInt(1));
         service.setPaymentId(rows.getInt(2));
         service.setPaymentDate(rows.getString(3));
         service.setAmount(rows.getDouble(4));
         service.setAccountNumber(rows.getLong(5));
         service.setPayAmount(rows.getDouble(6));
         service.setReadingDueDate(rows.getString(7));
         service.setTotalAmount(rows.getDouble(8));
         list.add(service);
     	
      }	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
       
      
		return list;
	}
	
	
	@Override
	public List<Services> readParticularForm(Services services)throws ClassNotFoundException, SQLException {
		
		List<Services> list=new ArrayList<>();
		try {
		Connection connection = JDBCConnection.getConnection();
  	    String read="SELECT service_number,payment_id,payment_date,amount,account_number,pay_amount,reading_due_date,total_amount FROM payment where service_number=?";
  	    PreparedStatement prepareStatement = connection.prepareStatement(read);
  	    prepareStatement.setInt(1,services.getServiceNumber());
        ResultSet rows = prepareStatement.executeQuery();
     
  	   while(rows.next())
       {
         
         
         Services service =new Services();
         
         service.setServiceNumber(rows.getInt(1));
         service.setPaymentId(rows.getInt(2));
         service.setPaymentDate(rows.getString(3));
         service.setAmount(rows.getDouble(4));
         service.setAccountNumber(rows.getLong(5));
         service.setPayAmount(rows.getDouble(6));
         service.setReadingDueDate(rows.getString(7));
         service.setTotalAmount(rows.getDouble(8));
         list.add(service);
     
      }	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
       
      
		return list;
	}
	
	
	
	
	
	
	

	
	@Override
	public void paymentStatus(Services services) throws ClassNotFoundException, SQLException {
		String update="update payment set payment_status=1 where service_number=?";
		try {
			Connection connection=JDBCConnection.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(update);
			prepareStatement.setInt(1,services.getServiceNumber());
			prepareStatement.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	
          
}
