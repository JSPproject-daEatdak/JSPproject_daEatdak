package com.daeatdak.board;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.board.dao.BoardDAO;
import com.daeatdak.board.vo.BoardVO;

public class BoardPasswordCheck implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		
			System.out.println("비밀번호 확인 메소드 실행");
		
			int boardNum=Integer.valueOf(request.getParameter("boardNum"));
			System.out.println(boardNum);
			BoardDAO boardDAO = new BoardDAO();
			BoardVO boardVO = boardDAO.selectPassword(boardNum);
			request.setAttribute("board", boardVO);
			System.out.println(boardVO);
			request.getRequestDispatcher("/board/boardPasswordCheckConfig.jsp").forward(request, response);

			return null;
	}

}
