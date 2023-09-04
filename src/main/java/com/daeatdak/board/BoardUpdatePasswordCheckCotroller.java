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

// 수정하기 위해 글등록누르면 비밀번호 체크를 위해 이동하는 클래스 
public class BoardUpdatePasswordCheckCotroller implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("글 수정하기 비밀번호 확인 메소드 실행");
		
		int boardNum=Integer.valueOf(request.getParameter("boardNum"));
		System.out.println(boardNum);
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = boardDAO.selectPassword(boardNum);
		request.setAttribute("board", boardVO);
		System.out.println(boardVO);
		request.getRequestDispatcher("/board/boardUpdatePasswordCheck.jsp").forward(request, response);

		return null;
	}

}
