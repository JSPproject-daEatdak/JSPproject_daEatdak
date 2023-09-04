package com.daeatdak.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.board.dao.BoardDAO;
import com.daeatdak.board.dto.BoardDTO;
import com.daeatdak.board.vo.BoardVO;


public class BoardListOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		BoardDAO boardDAO=new BoardDAO();
		BoardDTO boardDTO=new BoardDTO();
		BoardVO boardVO=new BoardVO();
		System.out.println(boardDTO);
		System.out.println("리스트 메소드를 실행합니다");
		request.setAttribute("boardList", boardDAO.selectAll());
		// 컨투롤러에서는 boardLis
		System.out.println(boardDTO);
		System.out.println(boardVO);
		
		request.getRequestDispatcher("/board/boardList.jsp").forward(request, response);

		
		return  null;
		
	}

}
