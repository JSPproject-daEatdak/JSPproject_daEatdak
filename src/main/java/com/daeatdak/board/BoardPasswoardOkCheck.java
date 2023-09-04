package com.daeatdak.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.board.dao.BoardDAO;
import com.daeatdak.board.vo.BoardVO;

public class BoardPasswoardOkCheck implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("비밀번호 확인 메소드 실행");
		response.setContentType("text/javascript");
		int boardNum=Integer.valueOf(request.getParameter("boardNum"));
		System.out.println(boardNum);
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = boardDAO.privateContent(boardNum);
		System.out.println(boardVO);
		System.out.println(boardVO.getBoardPassword());
		String boardPassword=request.getParameter("boardPassword");
		System.out.println(boardPassword);
		System.out.println("if문까지 갓다");
		if(boardVO.getBoardPassword().equals(boardPassword)) {
			System.out.println(boardVO.getBoardPassword());
			System.out.println(boardPassword);
			request.setAttribute("board", boardVO);
			request.getRequestDispatcher("/board/boardViewOk.bo").forward(request, response);
		}else if(!boardVO.getBoardPassword().equals(boardPassword)){
			request.setAttribute("board", boardVO);
			String warningMessage = "비밀번호가 일치하지 않습니다.";
			request.setAttribute("warningMessage", warningMessage);

			request.getRequestDispatcher("/board/boardPasswordCheckConfig.jsp").forward(request, response);
		

		}
//		request.getRequestDispatcher("/board/boardListOk.bo").forward(request, response);
		return null;
	}

}
