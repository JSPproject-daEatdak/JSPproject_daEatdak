package com.daeatdak.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Result;

public class MemberFrontController extends HttpServlet {

	   private static final long serialVersionUID = 1L;
	       
	    public MemberFrontController() {
	        super();
	    }
	
	   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//      response.getWriter().append("Served at: ").append(request.getContextPath());
	      doProcess(request, response);
	   }
	
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      request.setCharacterEncoding("UTF-8");
	      doProcess(request, response);
	   }
	   
	   protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
	      System.out.println(request.getContextPath());      
	      System.out.println(request.getRequestURI());
	      
	      String target = request.getRequestURI().substring(request.getContextPath().length());
	      System.out.println(target);
	      Result result = null;
	      
	      switch(target) {
	      case "/member/login.me":
	      	request.getRequestDispatcher("/member/login.jsp").forward(request, response);
	      	break;
	      
	      case "/member/loginOK.me":
	         System.out.println("loginOk!!!");
	         new LoginController().execute(request, response);
//	         request.getRequestDispatcher("index.jsp").forward(request, response);
//	         request.getRequestDispatcher("/member/login.jsp").forward(request, response);
		     break;
	      
	      case "/member/logoutOK.me" :
	    	  System.out.println("테스트");	    	  
	         new LoginController().logout(request, response);
	         break;

	      }
	      
	      
	      
/*	      if(result != null) {
	    	  if(result.isRedirect()) {
	    		  response.sendRedirect(result.getPath());
	    	  }else { 
	    		  request.getRequestDispatcher(result.getPath()).forward(request, response);
	    	  }
	      }*/

	   
	   }

}








