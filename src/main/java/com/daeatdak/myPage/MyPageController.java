package com.daeatdak.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.login.dto.UserDTO;
import com.daeatdak.myPage.dao.myPageDAO;

@WebServlet("/MyPage")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("확인차");
		UserDTO userDTO = new UserDTO();
		myPageDAO myDAO = new myPageDAO();
		UserDTO result = null;
		
//		userDTO.setUserName(request.getParameter("userName"));
		userDTO.setUserName("User1");
		userDTO.setUserPassword(request.getParameter("configPW"));
		userDTO.setUserPhone(request.getParameter("userPhone"));
		String mail1 = request.getParameter("email1");
		String mail2 = request.getParameter("email2");
		userDTO.setUserEmail(mail1 + "@" + mail2);
		
		
		System.out.println("네임 : " + userDTO.getUserName());
		System.out.println("패스 : " + request.getParameter("configPW"));
		System.out.println("폰 : " + request.getParameter("userPhone"));
		System.out.println(userDTO.getUserEmail());
		result = myDAO.revise(userDTO);
		
		response.sendRedirect("/index.jsp");

//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
