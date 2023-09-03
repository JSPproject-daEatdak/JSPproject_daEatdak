package com.daeatdak.common.dto;

public class CommonDTO {

	private int goodsNum;	//상품 넘버
	private int categoryNum;	//카테고리 넘버
	private String goodsName;	//상품 이름
	private int goodsPrice;	//상품 가격
	private int goodsQuantity;  //상품 재고
	private int saleCount;	//팔린 숫자
	
	public CommonDTO() {
		super();
	}

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
		return "CommonDTO [goodsNum=" + goodsNum + ", categoryNum=" + categoryNum + ", goodsName=" + goodsName
				+ ", goodsPrice=" + goodsPrice + ", goodsQuantity=" + goodsQuantity + ", saleCount=" + saleCount + "]";
	}
}
