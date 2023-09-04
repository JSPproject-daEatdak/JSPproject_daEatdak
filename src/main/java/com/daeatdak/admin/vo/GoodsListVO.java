package com.daeatdak.admin.vo;

public class GoodsListVO {
	private int categoryNum;
	private String goodsName;
	private int goodsPrice;
	private int goodsQuantity;
	
	
	public GoodsListVO() {
		;
	}


	public int getCategoryNum() {
		return categoryNum;
	}


	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}


	public String getGoodsName() {
		return goodsName;
	}


	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}


	public int getGoodsPrice() {
		return goodsPrice;
	}


	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}


	public int getGoodsQuantity() {
		return goodsQuantity;
	}


	public void setGoodsQuantity(int goodsQuantity) {
		this.goodsQuantity = goodsQuantity;
	}


	@Override
	public String toString() {
		return "GoodsListVO [categoryNum=" + categoryNum + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsQuantity=" + goodsQuantity + "]";
	}
	
	
}
