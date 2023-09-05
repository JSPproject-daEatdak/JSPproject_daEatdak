package com.daeatdak.login.dto;

public class UserDTO {
	
	private int userNum;
	private int addressNum;
	private String userEmail;
	private String userName;
	private String userPassword;
	private String userPhone;
	private int userRoll;
	
	public UserDTO() {}

	public int getUserNum() {
		return userNum;
	}


	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}


	public int getAddressNum() {
		return addressNum;
	}


	public void setAddressNum(int addressNum) {
		this.addressNum = addressNum;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}


	public String getUserPhone() {
		return userPhone;
	}


	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}


	public int getUserRoll() {
		return userRoll;
	}


	public void setUserRoll(int userRoll) {
		this.userRoll = userRoll;
	}


	@Override
	public String toString() {
		return "MemberDTO [userNum="+ userNum + ", addressNum=" + addressNum +", userEmail=" + userEmail
				+ ", userName=" + userName + ", userPassword=" + userPassword + ", userPhone="
				+ userPhone + "userRoll=" + userRoll +"]";
	}
	
	
}