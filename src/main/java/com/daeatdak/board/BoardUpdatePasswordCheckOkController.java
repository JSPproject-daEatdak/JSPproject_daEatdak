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

// 수정하기 비밀번호 체크후 글쓰기로 이동하는 클래스
public class BoardUpdatePasswordCheckOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("글 수정하기 비밀번호 확인 메소드 실행 후 페이지 이동 준비중 ");
//		response.setContentType("text/javascript");
		int boardNum=Integer.valueOf(request.getParameter("boardNum"));
		System.out.println(boardNum);
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = boardDAO.updateContent(boardNum);
		System.out.println(boardVO);
		System.out.println(boardVO.getBoardPassword());
		String boardPassword=request.getParameter("boardPassword");
		System.out.println(boardPassword);
		System.out.println("if문까지 갓다");
		if(boardVO.getBoardPassword().equals(boardPassword)) {
			System.out.println(boardVO.getBoardPassword());
			System.out.println(boardPassword);
			request.setAttribute("board", boardVO);
			request.getRequestDispatcher("/board/boardUpdatePage.jsp").forward(request, response);
			System.out.println(boardVO);
		}else if(!boardVO.getBoardPassword().equals(boardPassword)){
			String warningMessage = "비밀번호가 일치하지 않습니다.";
			request.setAttribute("warningMessage", warningMessage);
			request.setAttribute("board", boardVO);
			request.getRequestDispatcher("/board/boardUpdatePasswordCheck.jsp").forward(request, response);
		}
		
		return null;
	}
} 