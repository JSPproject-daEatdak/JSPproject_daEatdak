package com.daeatdak.admin.dto;

public class AdminDTO {

	private int goodsNum;
	private String goodsName;
	private int goodsQuantity;
	private int goodsCategory;
	private int goodsPrice;
	private int saleCount;
	private int imageNum;

	public AdminDTO() {
		;
	}

	public int getGoodsNumber() {
		return goodsNum;
	}

	public void setGoodsNumber(int goodsNum) {
		this.goodsNum = goodsNum;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getGoodsQuantity() {
		return goodsQuantity;
	}

	public void setGoodsQuantity(int goodsQuantity) {
		this.goodsQuantity = goodsQuantity;
	}

	public int getGoodsCategory() {
		return goodsCategory;
	}

	public void setGoodsCategory(int goodsCategory) {
		this.goodsCategory = goodsCategory;
	}

	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getSaleCount() {
		return saleCount;
	}

	public void setSaleCount(int saleCount) {
		this.saleCount = saleCount;
	}

	public int getImageNum() {
		return imageNum;
	}

	public void setImageNum(int imageNum) {
		this.imageNum = imageNum;
	}

	@Override
	public String toString() {
		return "AdminDTO [goodsNumber=" + goodsNum + ", goodsName=" + goodsName + ", goodsQuantity=" + goodsQuantity
				+ ", goodsCategory=" + goodsCategory + ", goodsPrice=" + goodsPrice + ", saleCount=" + saleCount
				+ ", imageNum=" + imageNum + "]";
	}

}
