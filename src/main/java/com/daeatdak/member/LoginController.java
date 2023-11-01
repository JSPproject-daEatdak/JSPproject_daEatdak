package com.daeatdak.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.login.dao.UserDAO;
import com.daeatdak.login.dto.UserDTO;

/**
 * Servlet implementation class Login
 */
/* @WebServlet("/Member") */
public class LoginController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException, ServletException {
		System.out.println("진입확인");

		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();
		UserDTO result = null;

		int userNum = 0;
		String path = null;

		userDTO.setUserName(request.getParameter("userName"));
		userDTO.setUserPassword(request.getParameter("userPassword"));
		HttpSession session = request.getSession();

		result = userDAO.login(userDTO);

		if (result == null) {
			System.out.println("널일경우");
			request.setAttribute("loginOk", "false");
			request.getRequestDispatcher("/member/login.jsp").forward(request, response);
		} else {
			
			int addressNum = result.getAddressNum();
			String userEmail = result.getUserEmail();
			String userName = result.getUserName();
			String userPassword = result.getUserPassword();
			String userPhone = result.getUserPhone();
			int userRoll = result.getUserRoll();

			System.out.println("result확인!! : " + result);

			session.setAttribute("userNum", addressNum);
			session.setAttribute("addressNum", addressNum);
			session.setAttribute("userEmail", userEmail);
			session.setAttribute("userName", userName);
			session.setAttribute("userPassword", userPassword);
			session.setAttribute("userPhone", userPhone);
			session.setAttribute("userRoll", userRoll);
			
			request.setAttribute("userRoll", userRoll);
			System.out.println("널이아닐경우");
			System.out.println("================================================");
			System.out.println("마지막 테스트");
			response.sendRedirect("/index.jsp");
		}

		return null;
	}

	public Result logout(HttpServletRequest request, HttpServletResponse response) throws IOException, ServerException {

		HttpSession session = request.getSession();

		session.invalidate();

		response.sendRedirect("/index.jsp");

		return null;
	}

}
