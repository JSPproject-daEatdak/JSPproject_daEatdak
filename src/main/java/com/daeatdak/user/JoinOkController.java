package com.daeatdak.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.user.dao.UserDAO;
import com.daeatdak.user.dto.UserDTO;

public class JoinOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException {

		UserDTO userDTO = new UserDTO();
		UserDAO userDAO = new UserDAO();
		Result result =new Result();
		
		
		userDTO.setUserEmail(request.getParameter("userEmail"));
		userDTO.setUserName(request.getParameter("userName"));
		userDTO.setUserPassword(request.getParameter("userPassword"));
		userDTO.setUserPhone(request.getParameter("userPhone"));
		
		System.out.println(userDTO);
		
		userDAO.join(userDTO);
		
		
		result.setRedirect(true);
		result.setPath("/user/login.jsp");
		
		return result;
	}
	
}
