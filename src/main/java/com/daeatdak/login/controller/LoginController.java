package com.daeatdak.login.controller;

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
/*@WebServlet("/Login")*/
public class LoginController implements Execute {
	
    @Override
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServerException{
		System.out.println("진입ㅈ했나");
		
		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();
		UserDTO result = null;
		
		int userNum = 0;
		String path = null;
		
		HttpSession session = request.getSession();
		int loginTime = 60*60;
		
		session.setMaxInactiveInterval(loginTime);
		
		userDTO.setUserName(request.getParameter("userName"));
		userDTO.setUserPassword(request.getParameter("userPassword"));
		
		result = userDAO.login(userDTO);
		System.out.println("result : " + result);
		
//		int userNum;
		
		if(result == null) {
			System.out.println("널일경우");
			request.setAttribute("loginOk", "false");
			try {
				request.getRequestDispatcher("/member/login.jsp").forward(request, response);
			} 
			catch (ServletException e) {
				e.printStackTrace();
			} 
			catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			
			
			int addressNum = result.getAddressNum();
			String userEmail = result.getUserEmail();
			String userName = result.getUserName();
			String userPassword = result.getUserPassword();
			String userPhone = result.getUserPhone();
			int userRoll = result.getUserRoll();			

			System.out.println("몇 번");
			
			session.setAttribute("addressNum", addressNum);
			session.setAttribute("userEmail", userEmail);
			session.setAttribute("userName", userName);
			session.setAttribute("userPassword", userPassword);
			session.setAttribute("userPhone", userPhone);
			session.setAttribute("userRoll", userRoll);
			session.setAttribute("result", result);

			
			request.setAttribute("userRoll", userRoll);			
			System.out.println("널이아닐경우");
			try {
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			response.sendRedirect("/index.jsp");
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
