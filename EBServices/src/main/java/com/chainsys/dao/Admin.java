package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.chainsys.model.Services;
import com.chainsys.util.JDBCConnection;

public class Admin implements AdminDAO {
	Services services=new Services();
	//List<Services> list=new ArrayList<>();
	@Override
	public void adminRegister(Services services) throws ClassNotFoundException, SQLException {
		Connection connection=JDBCConnection.getConnection();
		String register="insert into user(name,email_id,password,address,district,state,phone_number,aadhaar_number,user_type)values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement prepareStatement=connection.prepareStatement(register);
		prepareStatement.setString(1,services.getName());
		prepareStatement.setString(2,services.getEmailId());
		prepareStatement.setString(3, services.getPassword());
		prepareStatement.setString(4,services.getAddress());
		prepareStatement.setString(5,services.getDistrict());
		prepareStatement.setString(6,services.getState());
		prepareStatement.setLong(7,services.getPhoneNumber());
		prepareStatement.setLong(8,services.getAadhaarNumber());
		prepareStatement.setString(9,services.getUserType());
	    int rows=prepareStatement.executeUpdate();
	    System.out.println(rows);
		
	}

	@Override
	public String adminLogIn(String emailId) throws ClassNotFoundException, SQLException {
		Connection connection=JDBCConnection.getConnection();
		String password=null;
		String logIn="select password from user where email_id=? && user_type=?";
		PreparedStatement prepareStatement=connection.prepareStatement(logIn);
		prepareStatement.setString(1,emailId);
	    prepareStatement.setString(2,"Admin");
		ResultSet rows = prepareStatement.executeQuery();
		while(rows.next()) {
			 password=rows.getString(1);
			 
		}
		System.out.println(rows);
		return password;

	}

	@Override
	public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException {
        
		List<Services> list=new ArrayList<>();
		
		Connection connection = JDBCConnection.getConnection();
  	    System.out.println(connection);
  	    String read="SELECT name,email_id,password,address,district,state,phone_number,aadhaar_number,user_type FROM user where email_id=?";
  	    PreparedStatement prepareStatement = connection.prepareStatement(read);
  	    prepareStatement.setString(1,services.getEmailId());
        ResultSet rows = prepareStatement.executeQuery();
        System.out.println("in");
        while(rows.next())
        {
        	System.out.println("out");
        	//Services services=new Services();
        	services.setName(rows.getString(1));
        	services.setEmailId(rows.getString(2));
        	services.setPassword(rows.getString(3));
        	services.setAddress(rows.getString(4));
        	services.setDistrict(rows.getString(5));
        	services.setState(rows.getString(6));
        	services.setPhoneNumber(rows.getLong(7));
        	services.setAadhaarNumber(rows.getLong(8));
        	services.setUserType(rows.getString(9));
        	list.add(services);
        	
        }	
        
		return list;
	}

	@Override
	public void deleteForm(Services services) throws ClassNotFoundException, SQLException {
		Connection connection=JDBCConnection.getConnection();
		String delete="DELETE from user where email_id=?";
		PreparedStatement prepareStatement=connection.prepareStatement(delete);
		prepareStatement.setString(1,services.getEmailId());
		int rows=prepareStatement.executeUpdate();
		System.out.println(rows+"Deleted");
		
	}

	@Override
	public void updateForm(Services services) throws ClassNotFoundException, SQLException {
		
		Connection connection=JDBCConnection.getConnection();
		System.out.println(services.getEmailId());
		String update="UPDATE user SET name=?,address=?,district=?,state=?,phone_number=?,aadhaar_number=? WHERE email_id=?";
		PreparedStatement prepareStatement=connection.prepareStatement(update);
		prepareStatement.setString(1,services.getName());
		//prepareStatement.setString(2,services.getEmailId());
		//prepareStatement.setString(3, services.getPassword());
		prepareStatement.setString(2,services.getAddress());
		prepareStatement.setString(3,services.getDistrict());
		prepareStatement.setString(4,services.getState());
		prepareStatement.setLong(5,services.getPhoneNumber());
		prepareStatement.setLong(6,services.getAadhaarNumber());
		prepareStatement.setString(7,services.getEmailId());
		int rows=prepareStatement.executeUpdate();
		System.out.println(rows+"Updated");
	}
	
	

}
