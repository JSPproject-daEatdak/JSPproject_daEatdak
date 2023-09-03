package com.daeatdak.goods.dto;

public class GoodsDTO {

	private int goodsNum;
	private int categoryNum;
	private String goodsName;
	private int goodsPrice;
	private int goodsQuantity;
	private int saleCount;
	
	public GoodsDTO() {;}

	

	public int getGoodsNum() {
		return goodsNum;
	}



	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
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



	public int getSaleCount() {
		return saleCount;
	}



	public void setSaleCount(int saleCount) {
		this.saleCount = saleCount;
	}



	@Override
	public String toString() {
		
		return "goodsNumber = " + goodsNum  + "," +" categoryNumber = "+categoryNum + ","+ " goodsName =" + goodsName + "," + 
		" goodsPrice = "+goodsPrice + "," + " goodsQuantity = " +goodsQuantity + "," + " saleCount = " + saleCount;
	}
}
