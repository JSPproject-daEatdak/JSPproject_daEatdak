package com.daeatdak.board;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.board.dao.BoardDAO;
import com.daeatdak.board.dto.BoardDTO;
import com.daeatdak.board.vo.BoardVO;

public class BoardUpdateController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, ServerException {
		System.out.println("컨트롤러까지는 입성!");
		
		int boardNum=Integer.valueOf(request.getParameter("boardNum"));
		System.out.println(boardNum);
		BoardDAO boardDAO=new BoardDAO();
		BoardVO boardVO=new BoardVO();
////	Integer userNum = (Integer)request.getSession().getAttribute("userNum");
//		System.out.println(boardDTO);
		boardVO.setBoardNum(boardNum);
		System.out.println("글수정 페이지 이동 완료!");
		boardVO.setBoardName(request.getParameter("boardName"));
		System.out.println("-------------Name확인");
		boardVO.setBoardPassword(request.getParameter("boardPassword"));
		System.out.println("-------------password확인");
		boardVO.setBoardContent(request.getParameter("boardContent"));
		System.out.println("-------------content확인");
		String boardLockValue =request.getParameter("boardLock");
//		boardDTO.setUserNum(userNum);
		// 체크여부를 받아와서 문자열타입으로 저장한다 
	    if (boardLockValue != null && boardLockValue.equals("on")) {
	        boardVO.setBoardLock(1); // 체크된 경우 "1" 
	    } else {
	        boardVO.setBoardLock(0); // 체크되지 않은 경우 "0" 
	    }
	    System.out.println("-------------boardLock확인");
		System.out.println(boardVO);
		boardDAO.update(boardVO);
		System.out.println("컨트롤러 실행!");
		request.setAttribute("board", boardVO);
		request.getRequestDispatcher("/board/boardListOk.bo").forward(request, response);
		// 수정이 완료되었습니다.
		return null;
	}

}
