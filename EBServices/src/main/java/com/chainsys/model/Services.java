package com.chainsys.model;

import java.sql.Date;

public class Services {
       String name;
       String emailId;
       String password;
       String reEnterPassword;
       String address;
       String district;
       String state;
       long phoneNumber;
       long aadhaarNumber;
       String userType;
         
       int serviceNumber;
       double amount;
       double readingUnits;
       String readingTakenDate;
       String readingDueDate;
       String serviceType;
       String status;
       
       String paymentId;
       String paymentDate;
       long accountNumber;
       
       public Services() {
    	   
       }
       
	public Services(String name, String emailId, String password, String address, String district, String state,
			long phoneNumber1, long aadhaarNumber1) {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReEnterPassword() {
		return reEnterPassword;
	}
	public void setReEnterPassword(String reEnterPassword) {
		this.reEnterPassword = reEnterPassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public long getAadhaarNumber() {
		return aadhaarNumber;
	}
	public void setAadhaarNumber(long aadhaarNumber) {
		this.aadhaarNumber = aadhaarNumber;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}

	
	
	public int getServiceNumber() {
		return serviceNumber;
	}

	public void setServiceNumber(int serviceNumber) {
		this.serviceNumber = serviceNumber;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getReadingUnits() {
		return readingUnits;
	}

	public void setReadingUnits(double readingUnits) {
		this.readingUnits = readingUnits;
	}

	public String getReadingTakenDate() {
		return readingTakenDate;
	}

	public void setReadingTakenDate(String readingTakenDate) {
		this.readingTakenDate = readingTakenDate;
	}

	public String getReadingDueDate() {
		return readingDueDate;
	}

	public void setReadingDueDate(String readingDueDate) {
		this.readingDueDate = readingDueDate;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
    	
	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
    
	public String getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Override
	public String toString() {
		return "Services [name=" + name + ", emailId=" + emailId + ", password=" + password + ", reEnterPassword="
				+ reEnterPassword + ", address=" + address + ", district=" + district + ", state=" + state
				+ ", phoneNumber=" + phoneNumber + ", aadhaarNumber=" + aadhaarNumber + ", userType=" + userType
				+ ", serviceNumber=" + serviceNumber + ", amount=" + amount + ", readingUnits=" + readingUnits
				+ ", readingTakenDate=" + readingTakenDate + ", readingDueDate=" + readingDueDate + ", serviceType="
				+ serviceType + ", status=" + status + ", paymentId=" + paymentId + ", paymentDate=" + paymentDate
				+ ", accountNumber=" + accountNumber + "]";
	}

	

	
	
	
       
}
