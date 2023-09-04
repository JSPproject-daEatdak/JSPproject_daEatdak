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

public class BoardViewOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException, ServerException {
		System.out.println("컨트롤러까지는 이동!");
		int boardNum = Integer.valueOf(request.getParameter("boardNum"));
		System.out.println(boardNum);
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = boardDAO.select(boardNum);
		System.out.println(boardVO);
		boardDAO.updateViewCount(boardNum); // 조회수 증가
		request.setAttribute("board", boardVO); 
		request.getRequestDispatcher("/board/boardView.jsp").forward(request, response);
		System.out.println("프론트컨트롤로 이동!");
		return null;
	}

}
