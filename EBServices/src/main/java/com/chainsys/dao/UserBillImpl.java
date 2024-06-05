package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

import com.chainsys.model.Services;
import com.chainsys.util.JDBCConnection;

public class UserBillImpl implements UserBill{
	Services services=new Services();
	
	@Override
	public void calculateAmount() {
		double amount;
		double readingUnits = 0;
		 Scanner sc = new Scanner(System.in);  
		System.out.println("Enter ReadingUnits:");
		 readingUnits=sc.nextDouble();
		if(readingUnits>100) {
			System.out.println("No need to pay");
		}
		else if(readingUnits>100 && readingUnits>200) {
			amount= (readingUnits-100) * 1.20;  
		}
		else if(readingUnits>200 && readingUnits>300) {
			amount= 100*1.20+(readingUnits-200)*2;
		}
		else if(readingUnits>300 && readingUnits<400) {
			amount= 100*1.20+100*2+(readingUnits-200)*2.5;
		}
	}

	@Override
	public void customerBill() throws ClassNotFoundException, SQLException {
	
		Connection connection=JDBCConnection.getConnection();
		String fill="insert into bill(email_id,service_number,aadhaar_number,amount,reading_units,reading_taken_date,reading_due_date,service_type,status,address)values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement prepareStatement=connection.prepareStatement(fill);
		prepareStatement.setString(1,services.getEmailId());
		prepareStatement.setInt(2,services.getServiceNumber());
		prepareStatement.setLong(3,services.getAadhaarNumber());
		prepareStatement.setDouble(4,services.getAmount());
		prepareStatement.setDouble(5,services.getReadingUnits());
		
		
	}

	
	
}
