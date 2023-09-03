package com.daeatdak.goods;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.goods.dao.GoodsDAO;

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

}
