package com.daeatdak.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Result;

/**
 * Servlet implementation class UserFrontController
 */
//@WebServlet("/UserFrontController")
public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getContextPath());
		String target = request.getRequestURI().substring(request.getContextPath().length());
		System.out.println(target);
		Result result = null;
		
		
		switch(target) {
		case "/user/join.me":
			System.out.println("join");
			request.getRequestDispatcher("/user/signUp.jsp").forward(request, response);
			break;
		
		case "/user/joinOk.me":
			System.out.println("joinOk");
			result = new JoinOkController().execute(request, response);
			break;
			
		case "/user/checkIdOk.me":
			System.out.println("checkId");
			new CheckIdOkController().execute(request, response);
		
		}
		
		if(result !=null) {
			if(result.isRedirect()) {
				response.sendRedirect(result.getPath());
			}else {
				request.getRequestDispatcher(result.getPath()).forward(request, response);
			}
		}
		
	}

}
