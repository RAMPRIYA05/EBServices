package com.chainsys.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	public static void main(String[] args) throws ClassNotFoundException, SQLException  
	{
		Connection getConnection=getConnection();
		System.out.println(getConnection); 
	
		
          
	}

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root", "Rampriya5@");
		
		return connection;
	}
	
	
}
