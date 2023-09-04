package com.daeatdak.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.admin.dao.AdminDAO;
import com.daeatdak.admin.dto.AdminDTO;
import com.daeatdak.admin.vo.GoodsInfoListVO;

public class GoodsListDeleteOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException {

		AdminDTO adminDTO = new AdminDTO();
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		GoodsInfoListVO goodsInfoListVO = new GoodsInfoListVO();
		
		
		
		

		adminDTO.setGoodsNum((Integer)request.getAttribute("goodsNum"));
		System.out.println("삭제하기!");

		
		adminDAO.goodsDelete(adminDTO.getGoodsNum());
		

		
		
		return null;
	}
	
}
