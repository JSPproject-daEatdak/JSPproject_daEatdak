package com.daeatdak.user;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.goods.dao.GoodsDAO;
import com.daeatdak.goods.dto.CartDTO;
import com.daeatdak.user.dao.UserDAO;
import com.daeatdak.user.dto.UserDTO;

public class LoginController implements Execute{

//	@Override
//	public Result execute(HttpServletRequest request, HttpServletResponse response)
//			throws IOException, ServletException, ServerException {
//		System.out.println("컨트롤러 진입");
//		
//		GoodsDAO goodsDAO = new GoodsDAO();
//		UserDAO userDAO = new UserDAO();
//		UserDTO userDTO = new UserDTO();
//		CartDTO cartDTO = new CartDTO();
//		
//		UserDTO result = null;
//		CartDTO myCart = null;
//		
//		userDTO.setUserEmail(request.getParameter("userEmail"));
//		userDTO.setUserPassword(request.getParameter("userPassword"));
//		
//		result = userDAO.login(userDTO);
//		
//			
//		if(result != null) {
//			myCart = goodsDAO.selectCart(result.getUserNum());
//
//			if(myCart == null) {
//				goodsDAO.createCart(result.getUserNum());
//			}
//			HttpSession session = request.getSession();
//			session.setAttribute("userEmail",result.getUserEmail());
//			session.setAttribute("userNum",result.getUserNum());
//			session.setAttribute("userRoll",result.getUserRoll());
//			System.out.println("session 등록 완료");
//			response.sendRedirect(request.getContextPath() + "/common/MainFullMenu.co");
//		}else {
//            request.setAttribute("loginFailed", true);
//            request.getRequestDispatcher("/user/login.jsp").forward(request, response);
//		}
//		
//		return null;
//	}

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("컨트롤러 진입==================================");
		GoodsDAO goodsDAO = new GoodsDAO();
		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();
		CartDTO cartDTO = new CartDTO();
		
		UserDTO result = null;
		CartDTO myCart = null;
		
		userDTO.setUserEmail(request.getParameter("userEmail"));
		userDTO.setUserPassword(request.getParameter("userPassword"));
		
		result = userDAO.login(userDTO);
		
			
		if(result != null) {
			myCart = goodsDAO.selectCart(result.getUserNum());

			if(myCart == null) {
				goodsDAO.createCart(result.getUserNum());
			}
			HttpSession session = request.getSession();
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
	
	public Result login(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("컨트롤러 진입 확인");
		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();
		UserDTO result = null;
		
		int userNum = 0;
		String path = null;
		
		HttpSession session = request.getSession();
		int loginTime = 60*60;
		
		session.setMaxInactiveInterval(loginTime);
		
		userDTO.setUserEmail(request.getParameter("userEmail"));
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
			String userEmail = result.getUserEmail();
			String userName = result.getUserName();
			String userPassword = result.getUserPassword();
			String userPhone = result.getUserPhone();
			String userRoll = result.getUserRoll();

			System.out.println("몇 번");
			
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
	
	
	
}
