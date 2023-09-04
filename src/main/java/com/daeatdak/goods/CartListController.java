package com.daeatdak.goods;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.goods.dao.GoodsDAO;
import com.daeatdak.goods.dto.CartDTO;
import com.daeatdak.goods.dto.CartItemDTO;
import com.daeatdak.goods.dto.GoodsDTO;
import com.daeatdak.goods.dto.GoodsImageDTO;

public class CartListController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		HttpSession session = request.getSession();
		GoodsDAO goodsDAO = new GoodsDAO();
		CartDTO cartDTO = new CartDTO();
		GoodsDTO goodsDTO = new GoodsDTO();
		GoodsImageDTO goodsImageDTO = new GoodsImageDTO();
		CartItemDTO cartItemDTO = new CartItemDTO();

		Integer userNum = (Integer) session.getAttribute("userNum");		
		System.out.println(userNum);
		cartDTO = goodsDAO.selectMyCart(userNum);
		
		List<CartItemDTO> cartItems = goodsDAO.selectItemByCartNum(cartDTO.getCartNum());
		
		request.setAttribute("itemList",goodsDAO.selectItemByCartNum(cartDTO.getCartNum()));
		
		System.out.println(cartItems);
		System.out.println("----");
		System.out.println(session.getAttribute("itemList"));
		
	      
	    request.setAttribute("cartList", goodsDAO.selectCartItems(cartDTO.getCartNum()));
	    request.setAttribute("goodsImages", goodsDAO.selectImage());
	    System.out.println(session.getAttribute("cartList"));
		request.getRequestDispatcher("/goods/CartList.jsp").forward(request, response);
		return null;
	}

}
