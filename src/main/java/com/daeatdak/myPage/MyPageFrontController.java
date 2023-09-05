package com.daeatdak.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Result;

//@WebServlet("/MyPage")
public class MyPageFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPageFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);

	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String target = request.getRequestURI().substring(request.getContextPath().length());
		Result result = null;		
		

		switch (target) {
		case "/myPage/myPageWishListOk.mp":
			System.out.println("찜 프론트단 오나");
			new MyPageController().execute(request, response);
			break;

		case "/myPage/myPageUserConfigOk.mp":
			System.out.println("마이페이지");
			new MyPageController().userConfig(request, response);			
			break;



		case "/user/logoutOk.me":
			
		}
	}

}
