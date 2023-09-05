package com.daeatdak.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.board.dao.BoardDAO;
import com.daeatdak.board.dto.BoardDTO;
import com.daeatdak.board.vo.BoardVO;
import com.daeatdak.user.dao.UserDAO;
import com.daeatdak.user.dto.UserDTO;


public class BoardListOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		try {
		HttpSession session = request.getSession();
		UserDAO userDAO = new UserDAO();
		UserDTO userDTO = new UserDTO();
		BoardVO boardVO=new BoardVO();
		
		BoardDAO boardDAO =new BoardDAO();
		
		Integer userNum = (Integer) session.getAttribute("userNum");
		
	
		
		boardVO.setUserNum(userNum);
		System.out.println(userNum);

		
		System.out.println(boardVO);
		System.out.println("리스트 메소드를 실행합니다");
		request.setAttribute("boardList", boardDAO.selectAll());
		System.out.println(boardVO);
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("로그인이 되지 않은 유저입니다.");
		}
		finally{
		request.getRequestDispatcher("/board/boardList.jsp").forward(request, response);
		}
	

		
		return  null;
		
	}

}
