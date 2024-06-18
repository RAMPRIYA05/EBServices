package com.chainsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.chainsys.model.Services;

public interface PaymentDAO {
	 public void payBill(Services services) throws ClassNotFoundException, SQLException;
	 public List<Services> readForm(Services services) throws ClassNotFoundException, SQLException;
	
	 public void paymentStatus(Services services) throws ClassNotFoundException, SQLException;
	List<Services> readParticularForm(Services services) throws ClassNotFoundException, SQLException;
		//List<Services> readUnPaidPayment(Services services) throws ClassNotFoundException, SQLException;
		//List<Services> readParticularPayment(Services services) throws ClassNotFoundException, SQLException;
	 
}
