package com.daeatdak.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.user.dao.UserDAO;

public class CheckIdOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException {

		UserDAO userDAO = new UserDAO();
		boolean isTrue = userDAO.checkId(request.getParameter("id"));
		int result=0;
		
		//PrintWriter 가져오기 전에 설정해야함
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		System.out.println(request.getParameter("id"));
		
		
		if(isTrue) {
			//사용가능하면 0
			result=0;
		}else {
			//중복된 이메일이면 1
			result=1;
		}
		
		out.print(result);
		out.close();
		
		
		return null;
	}
	
	
	
}
