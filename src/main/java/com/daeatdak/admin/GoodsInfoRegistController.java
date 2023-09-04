
package com.daeatdak.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.admin.dao.AdminDAO;
import com.daeatdak.admin.dto.AdminDTO;

public class GoodsInfoRegistController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {

		
		AdminDAO adminDAO = new AdminDAO();
		AdminDTO adminDTO = new AdminDTO();
		int goodsNumber = Integer.valueOf(request.getParameter("goodsNum"));
		
		System.out.println(goodsNumber + "번 물품 수정하기 페이지");
		
	
		adminDAO.goodsInfoRegist(goodsNumber);
		
		request.setAttribute("goodsCategory", adminDTO.getGoodsCategory());
		request.setAttribute("goodsName", adminDTO.getGoodsName());
		request.setAttribute("goodsPrice", adminDTO.getGoodsName());
		System.out.println(adminDTO);
		return null;
	}

}
