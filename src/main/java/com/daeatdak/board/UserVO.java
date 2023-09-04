package com.daeatdak.board;

public class UserVO {
	private int userNum;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String address;
	private String detailAddress;
	
	public UserVO() {
		;
	}

	

	public int getUserNum() {
		return userNum;
	}



	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	@Override
	public String toString() {
		return "UserVO [userNum=" + userNum + ", userName=" + userName + ", userEmail=" + userEmail + ", userPhone="
				+ userPhone + ", address=" + address + ", detailAddress=" + detailAddress + "]";
	}
	
	
}
