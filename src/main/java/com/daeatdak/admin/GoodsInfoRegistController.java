
package com.daeatdak.admin;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.admin.dao.AdminDAO;
import com.daeatdak.admin.dto.AdminDTO;
import com.daeatdak.admin.vo.GoodsListVO;

public class GoodsInfoRegistController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {

		
		AdminDAO adminDAO = new AdminDAO();
		AdminDTO adminDTO = new AdminDTO();
		int goodsNumber = Integer.valueOf(request.getParameter("goodsNum"));
		
		System.out.println(goodsNumber + "번 물품 수정하기 페이지");
		
	
		adminDAO.goodsInfoRegist(goodsNumber);
		
		List<GoodsListVO> list = adminDAO.goodsInfoRegist(goodsNumber);
		
		System.out.println(list);
		
		for(GoodsListVO d : list) {
			System.out.println(d);
			int categoryNum = d.getCategoryNum();
			String goodsName = d.getGoodsName();
			int goodsPrice = d.getGoodsPrice();
			int goodsQuantity = d.getGoodsQuantity();
			
			System.out.println(categoryNum );
			System.out.println(goodsName );
			System.out.println(goodsPrice );
			System.out.println(goodsQuantity );
			
			
			request.setAttribute("categoryNum", categoryNum);
			request.setAttribute("goodsName", goodsName);
			request.setAttribute("goodsPrice", goodsPrice);
			request.setAttribute("goodsQuantity", goodsQuantity);
			
		}


		
		
		
		return null;
	}

}
