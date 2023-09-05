package com.daeatdak.user.dto;

public class AddressDTO {
	private int addressNum;
	private String address;
	private String roadAddress;
	private String detailAddress;
	private int userNum;
	
	

	public AddressDTO() {
		;
	}

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	@Override
	public String toString() {
		return "AddressDTO [addressNum=" + addressNum + ", address=" + address + ", roadAddress=" + roadAddress
				+ ", detailAddress=" + detailAddress + ", userNum=" + userNum + "]";
	}

	
	
	
}
