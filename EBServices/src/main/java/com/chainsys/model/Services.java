package com.chainsys.model;

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

	@Override
	public String toString() {
		return "Services [name=" + name + ", emailId=" + emailId + ", password=" + password + ", reEnterPassword="
				+ reEnterPassword + ", address=" + address + ", district=" + district + ", state=" + state
				+ ", phoneNumber=" + phoneNumber + ", aadhaarNumber=" + aadhaarNumber + ", userType=" + userType + "]";
	}
	
       
}
