package com.daeatdak.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.user.dao.UserDAO;
import com.daeatdak.user.dto.UserDTO;

public class FindUserEmailController implements Execute  {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException {
		UserDTO userDTO = new UserDTO();
		UserDAO userDAO = new UserDAO();
		
//		request.setAttribute("findUserEmail", userDAO.findUserEmailByName(userDTO));

	
		request.setAttribute("getUserEmail", userDAO.findUserEmailByName(userDTO));
		
		
		return null;
		
	}
	
	
	
	
	
}
