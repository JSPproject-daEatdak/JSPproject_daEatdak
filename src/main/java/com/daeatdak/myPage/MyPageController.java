package com.daeatdak.myPage;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.login.dto.UserDTO;
import com.daeatdak.myPage.dao.MyPageDAO;
import com.daeatdak.myPage.dto.MyPageDTO;

public class MyPageController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		System.out.println("확인차");
		MyPageDAO myDAO = new MyPageDAO();
		System.out.println("확인차2");
		MyPageDTO myDTO = new MyPageDTO();

		int userNum = 1; 
				//Integer.parseInt(request.getParameter("userNum"));
		myDTO.setUserNum(userNum);
		
		System.out.println("첫 테 : " + myDTO);
		System.out.println("찜 리스트 확인");
		request.setAttribute("productList", myDAO.productList());
		UserDTO result = null;
		System.out.println("둘 테 : " + myDTO);
		List<MyPageDTO> list = new ArrayList<MyPageDTO>();

		
		for(MyPageDTO dto : list) {
			System.out.println(dto);
		}
		System.out.println("리스트 : "+ list);

		
		request.getRequestDispatcher("/myPage/myPageWishList.jsp").forward(request, response);

		return null;
	}

	
	public Result userConfig(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("회원 정보 수정 컨트롤러");
		UserDTO userDTO = new UserDTO();
		MyPageDAO myDAO = new MyPageDAO();
		UserDTO result = null;

		userDTO.setUserName(request.getParameter("userName"));
		System.out.println("유저이름 확인 : " + request.getParameter("userName"));
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

		request.getRequestDispatcher("/index.jsp").forward(request, response);
//		response.sendRedirect("/index.jsp");

		return null;
	}

}
