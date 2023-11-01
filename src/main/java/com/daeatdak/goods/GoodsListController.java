package com.daeatdak.goods;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.goods.dao.GoodsDAO;
import com.daeatdak.goods.dto.GoodsDTO;

public class GoodsListController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException {
	      GoodsDAO goodsDAO = new GoodsDAO();
	      int categoryNum = Integer.parseInt(request.getParameter("categoryNum")) ;
	      
	      request.setAttribute("goodsList", goodsDAO.selectCategory(categoryNum));	      
	      request.setAttribute("goodsImages", goodsDAO.selectImage());
	      
	      System.out.println("cateNum : " + categoryNum);
	      try {
			request.getRequestDispatcher("/goods/GoodsList.jsp").forward(request, response);
		} catch (ServletException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
		return null;
	}
	
	
	public Result selectPurchase(HttpServletRequest request, HttpServletResponse response) throws IOException, ServerException {
  	  System.out.println("구매 2차 확인");

		GoodsDTO goodsDTO = new GoodsDTO();
		GoodsDAO goodsDAO = new GoodsDAO();
		GoodsDTO result = null;
		
		
//		result = goodsDAO.selectPurchase(goodsDTO);
		
		
//		int goodsNum;
//		int categoryNum;		
		String goodsName = goodsDTO.getGoodsName();
		int goodsPrice = goodsDTO.getGoodsPrice();
		int goodsQuantity = goodsDTO.getGoodsQuantity();
		int saleCount = goodsDTO.getSaleCount();

		System.out.println("이름 : " + goodsName);
		System.out.println("가격 : " + goodsPrice);
		System.out.println("수량 : " + goodsQuantity);
		System.out.println("총 : " + saleCount);
		
		try {
			request.getRequestDispatcher("/myPage/myPagePurchaseHistory.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;

	}

}
