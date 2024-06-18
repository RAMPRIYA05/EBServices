package com.chainsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.chainsys.model.Services;

public interface UserBill {
   
	public void insertIntoBill(Services services) throws ClassNotFoundException, SQLException;
	
	 public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException;
	 public List<Services> readParticularBill(Services services) throws ClassNotFoundException, SQLException;
     public void deleteBill(Services services) throws ClassNotFoundException, SQLException;
}
