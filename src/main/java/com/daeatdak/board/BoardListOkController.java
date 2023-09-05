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
		try {
		Integer userNum = (Integer)request.getSession().getAttribute("userNum");
		
		BoardDTO boardDTO=new BoardDTO();
	
		BoardDAO boardDAO=new BoardDAO();
		
		BoardVO boardVO=new BoardVO();
		
		boardVO.setUserNum(userNum);
		System.out.println(boardDTO);
		System.out.println("리스트 메소드를 실행합니다");
		request.setAttribute("boardList", boardDAO.selectAll());
		// 컨투롤러에서는 boardLis
		System.out.println(boardDTO);
		System.out.println(boardVO);
		}catch(Exception e) {
			System.out.println("로그인 되지않은 상태입니다.");
		}finally {request.getRequestDispatcher("/board/boardList.jsp").forward(request, response);}
	

		
		return  null;
		
	}

}
