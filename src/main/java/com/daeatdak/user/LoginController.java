package com.daeatdak.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.user.dao.UserDAO;
import com.daeatdak.user.dto.UserDTO;

public class LoginController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("컨트롤러 진입");
		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();
		UserDTO result = null;
		
		userDTO.setUserEmail(request.getParameter("userEmail"));
		userDTO.setUserPassword(request.getParameter("userPassword"));
		
		result = userDAO.login(userDTO);
		
		
		HttpSession session = request.getSession();
		
		if(result != null) {
			session.setAttribute("userEmail",result.getUserEmail());
			session.setAttribute("userNum",result.getUserNum());
			session.setAttribute("userRoll",result.getUserRoll());
			System.out.println("session 등록 완료");
			response.sendRedirect(request.getContextPath() + "/common/MainFullMenu.co");
		}else {
            request.setAttribute("loginFailed", true);
            request.getRequestDispatcher("/user/login.jsp").forward(request, response);
		}
		
		return null;
	}

}
