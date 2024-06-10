package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.chainsys.model.Services;
import com.chainsys.util.JDBCConnection;

public class UserBillImpl implements UserBill{
	Services services=new Services();
	String emailId;
//	@Override
//	public void calculateAmount() {
//		double amount;
//		double readingUnits = 0;
//		 Scanner sc = new Scanner(System.in);  
//		System.out.println("Enter ReadingUnits:");
//		 readingUnits=sc.nextDouble();
//		if(readingUnits>100) {
//			System.out.println("No need to pay");
//		}
//		else if(readingUnits>100 && readingUnits>200) {
//			amount= (readingUnits-100) * 1.20;  
//		}
//		else if(readingUnits>200 && readingUnits>300) {
//			amount= 100*1.20+(readingUnits-200)*2;
//		}
//		else if(readingUnits>300 && readingUnits<400) {
//			amount= 100*1.20+100*2+(readingUnits-200)*2.5;
//		}
//	}

//	@Override
//	public void customerBill() throws ClassNotFoundException, SQLException {
//	
//		Connection connection=JDBCConnection.getConnection();
//		String fill="insert into bill(email_id,service_number,aadhaar_number,amount,reading_units,reading_taken_date,reading_due_date,service_type,status,address)values(?,?,?,?,?,?,?,?,?,?,?)";
//		PreparedStatement prepareStatement=connection.prepareStatement(fill);
//		prepareStatement.setString(1,services.getEmailId());
//		prepareStatement.setInt(2,services.getServiceNumber());
//		prepareStatement.setLong(3,services.getAadhaarNumber());
//		prepareStatement.setDouble(4,services.getAmount());
//		prepareStatement.setDouble(5,services.getReadingUnits());
//		
//		
//	}

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
		System.out.println("ram");
		int rows=prepareStatement.executeUpdate();
	    System.out.println(rows);
		
		
	}

//	@Override
//	public boolean emailExists(String emailId) throws ClassNotFoundException, SQLException {
//		Connection connection=JDBCConnection.getConnection();
//		String insert="Select email_id from user where aadhaar_number=?";
//		PreparedStatement prepareStatement=connection.prepareStatement(insert);
//		 prepareStatement.setString(1, emailId);
//		 ResultSet rows = prepareStatement.executeQuery();
//			while(rows.next()) {
//				emailId=rows.getString(1);
//				 return rows.next();
//				 
//			}
//		return false;
//	}

	@Override
	public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException {
		
		List<Services> list=new ArrayList<Services>();
		try {
		Connection connection = JDBCConnection.getConnection();
		String read="SELECT email_id,service_number,aadhaar_number,amount,reading_units,reading_taken_date,reading_due_date,service_type,status,address FROM bill";
		PreparedStatement prepareStatement = connection.prepareStatement(read);
		ResultSet rows = prepareStatement.executeQuery();
		System.out.println("customer");
		 while(rows.next())
	        {
			 System.out.println("bill");
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
	         System.out.println(status);
	         System.out.println("status");
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
	        	System.out.println(list);
	        
	         }
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return list;
		}
@Override
public List<Services> readParticularBill(Services services) throws ClassNotFoundException, SQLException {
		
		List<Services> list=new ArrayList<Services>();
		try {
		Connection connection = JDBCConnection.getConnection();
		String read="SELECT email_id,service_number,aadhaar_number,amount,reading_units,reading_taken_date,reading_due_date,service_type,status,address FROM bill where email_id=?";
		PreparedStatement prepareStatement = connection.prepareStatement(read);
	    prepareStatement.setString(1,services.getEmailId());
		ResultSet rows = prepareStatement.executeQuery();
		System.out.println("hi");
		 while(rows.next())
	        {
			 System.out.println("10");
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
	         System.out.println(status);
	         System.out.println("status1");
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
	         System.out.println(status);
	         System.out.println("status2");
	         service.setAddress(address);
	         list.add(service);
	        	System.out.println(list);
	        
	         }
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return list;
		}

@Override
public String ViewBillLogIn(String emailId) throws ClassNotFoundException, SQLException {
	Connection connection=JDBCConnection.getConnection();

	String logIn="select email_id from bill where email_id=?";
	PreparedStatement prepareStatement=connection.prepareStatement(logIn);
	prepareStatement.setString(1,emailId);
	ResultSet rows = prepareStatement.executeQuery();
	while(rows.next()) {
		 emailId=rows.getString(1);
		 
	}
	System.out.println(rows);
	return emailId;
	
}
	
}
