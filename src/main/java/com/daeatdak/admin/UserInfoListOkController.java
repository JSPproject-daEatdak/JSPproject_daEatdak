package com.daeatdak.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.user.dao.UserDAO;

public class UserInfoListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {

		UserDAO userDAO = new UserDAO();
		
		userDAO.userInfoList();
		request.setAttribute("UserInfoList", userDAO.userInfoList());
		return null;
	}
	
}
