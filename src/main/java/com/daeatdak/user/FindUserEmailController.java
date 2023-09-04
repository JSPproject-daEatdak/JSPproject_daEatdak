package com.daeatdak.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.SendResult;

import org.apache.ibatis.exceptions.TooManyResultsException;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.user.dao.UserDAO;
import com.daeatdak.user.dto.UserDTO;

public class FindUserEmailController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException, ServletException {
		UserDTO userDTO = new UserDTO();
		UserDAO userDAO = new UserDAO();
//		request.setAttribute("findUserEmail", userDAO.findUserEmailByName(userDTO));

		String userName = request.getParameter("userName");
			String userPhone = request.getParameter("userPhone");

			System.out.println(userName);
			System.out.println(userPhone);
			userDTO.setUserName(userName);
			userDTO.setUserPhone(userPhone);

			userDTO = userDAO.findUserEmailByName(userDTO);

			request.setAttribute("userName", userName);
			request.setAttribute("userEmail", userDTO.getUserEmail());

		
		return null;

	}

}
