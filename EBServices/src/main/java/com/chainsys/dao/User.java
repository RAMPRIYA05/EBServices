package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.chainsys.model.Services;
import com.chainsys.util.JDBCConnection;




public class User implements UserDAO {

	Services services=new Services();
	//List<Services> list=new ArrayList<>();
	@Override
	public void userRegister(Services services) throws ClassNotFoundException, SQLException {
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
	public String userLogIn(String emailId) throws ClassNotFoundException, SQLException {
		Connection connection=JDBCConnection.getConnection();
		String password=null;
		String logIn="select password from user where email_id=? && user_type=?";
		PreparedStatement prepareStatement=connection.prepareStatement(logIn);
		prepareStatement.setString(1,emailId);
	    prepareStatement.setString(2,"User");
		ResultSet rows = prepareStatement.executeQuery();
		while(rows.next()) {
			 password=rows.getString(1);
			 
		}
		System.out.println(rows);
		return password;
	}

	@Override
	public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException {
		
		List<Services> list=new ArrayList<Services>();
		try {
		Connection connection = JDBCConnection.getConnection();
  	    String read="SELECT name,email_id,password,address,district,state,phone_number,aadhaar_number FROM user where delete_user=0";
  	    PreparedStatement prepareStatement = connection.prepareStatement(read);
  	    
        ResultSet rows = prepareStatement.executeQuery();
        while(rows.next())
        {
        	System.out.println("out");
            String name=rows.getString(1);
            String emailId=rows.getString(2);
            String password=rows.getString(3);
            String address=rows.getString(4);
            String district=rows.getString(5);
            String state=rows.getString(6);
            String phoneNumber=rows.getString(7);
            long phoneNumber1=Long.parseLong(phoneNumber);
            
            String aadhaarNumber=rows.getString(8);
            long aadhaarNumber1=Long.parseLong(aadhaarNumber);
            Services service =new Services();
            service.setName(name);
            service.setEmailId(emailId);
            service.setPassword(password);
            service.setAddress(address);
            service.setDistrict(district);
            service.setState(state);
            service.setPhoneNumber(phoneNumber1);
            service.setAadhaarNumber(aadhaarNumber1);     	
            //Services service = new Services(name,emailId,password,address,district,state,phoneNumber1,aadhaarNumber1);
//            
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
	public void deleteForm(Services services) throws ClassNotFoundException, SQLException {
		
		//String delete="DELETE from user where email_id=?";
		String delete="update user set delete_user=true where email_id=?";
		try 
		{
			Connection connection=JDBCConnection.getConnection();
			PreparedStatement prepareStatement=connection.prepareStatement(delete);
			prepareStatement.setString(1,services.getEmailId());
			int rows=prepareStatement.executeUpdate();
			System.out.println(rows+"Deleted");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
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
