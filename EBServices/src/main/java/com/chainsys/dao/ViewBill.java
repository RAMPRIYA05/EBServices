package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.chainsys.model.Services;
import com.chainsys.util.JDBCConnection;

public class ViewBill implements ViewBillDAO{
	Services services=new Services();

	@Override
	public void insertIntoBill(Services services) throws ClassNotFoundException, SQLException {
		Connection connection=JDBCConnection.getConnection();
		String fill="insert into bill(email_id,service_number,aadhaar_number,amount,reading_units,reading_taken_date,reading_due_date,service_type,status,address)values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement prepareStatement=connection.prepareStatement(fill);
		prepareStatement.setString(1,services.getEmailId());
		prepareStatement.setInt(2,services.getServiceNumber());
		prepareStatement.setLong(3,services.getAadhaarNumber());
		prepareStatement.setDouble(4,services.getAmount());
		prepareStatement.setDouble(5,services.getReadingUnits());
		prepareStatement.setString(6,services.getReadingTakenDate());
		prepareStatement.setString(7,services.getReadingDueDate());
		prepareStatement.setString(8,services.getServiceType());
		prepareStatement.setString(9,services.getStatus());
		prepareStatement.setString(10,services.getAddress());
		
		prepareStatement.executeUpdate();
	  
		
	}

	@Override
	public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException {
		
		List<Services> list=new ArrayList<>();
		try {
		Connection connection = JDBCConnection.getConnection();
		String read="SELECT email_id,service_number,aadhaar_number,amount,reading_units,reading_taken_date,reading_due_date,service_type,status,address FROM bill where email_id=?";
		PreparedStatement prepareStatement = connection.prepareStatement(read);
		prepareStatement.setString(1,services.getEmailId());
		ResultSet rows = prepareStatement.executeQuery();
		 while(rows.next())
	        {
			 String emailId=rows.getString(1);
			 String serviceNumber=rows.getString(2);
			 int serviceNumber1=Integer.parseInt(serviceNumber);
			 String aadhaarNumber=rows.getString(3);
	         long aadhaarNumber1=Long.parseLong(aadhaarNumber);
	         String amount=rows.getString(4);
	         double amount1=Double.parseDouble(amount);
	        String readingUnits=rows.getString(5);
	         double readingUnits1=Double.parseDouble(readingUnits);
	         String readingTakenDate=rows.getString(6);
	         String readingDueDate=rows.getString(7);
	         String serviceType=rows.getString(8);
	         String status=rows.getString(9);
	         String address=rows.getString(10);
	         Services service =new Services();
	         service.setEmailId(emailId);
	         service.setServiceNumber(serviceNumber1);
	         service.setAadhaarNumber(aadhaarNumber1);
	         service.setAmount(amount1);
	         service.setReadingUnits(readingUnits1);
	         service.setReadingTakenDate(readingTakenDate);
	         service.setReadingDueDate(readingDueDate);
	         service.setServiceType(serviceType);
	         service.setStatus(status);
	         service.setAddress(address);
	         list.add(service);
	        
	       
	         }
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	
	}
	
}