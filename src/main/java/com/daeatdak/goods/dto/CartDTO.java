package com.daeatdak.goods.dto;

public class CartDTO {
	private int cartNum;
	private int userNum;
	
	public CartDTO() {
		super();
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	@Override
	public String toString() {
		return "CartDTO [cartNum=" + cartNum + ", userNum=" + userNum + "]";
	}

}
