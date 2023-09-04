package com.daeatdak.goods.dto;

public class CartItemDTO {



	private int cartItemNum;
	private int cartNum;
	private int goodsNum;
	
	
	public CartItemDTO() {
		super();
	}
	public int getCartItemNum() {
		return cartItemNum;
	}
	public void setCartItemNum(int cartItemNum) {
		this.cartItemNum = cartItemNum;
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	@Override
	public String toString() {
		return "CartItemDTO [cartItemNum=" + cartItemNum + ", cartNum=" + cartNum + ", goodsNum=" + goodsNum + "]";
	}

}
