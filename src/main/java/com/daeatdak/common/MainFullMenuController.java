package com.daeatdak.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.common.dao.CommonDAO;
import com.daeatdak.common.dto.CommonDTO;

public class MainFullMenuController {

    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CommonDAO commonDAO = new CommonDAO();

        // CommonDAO의 selectAll 메서드를 호출하여 상품 목록을 가져옴
        // (CommonVO는 상품 정보를 담는 클래스로 가정)
        List<CommonDTO> goodsList = commonDAO.selectAll();
   
        

        // request에 상품 목록을 속성으로 설정
        request.setAttribute("goodsList", goodsList);
        request.setAttribute("category1", commonDAO.selectAll1());
        request.setAttribute("category2", commonDAO.selectAll2());
        request.setAttribute("category3", commonDAO.selectAll3());
        request.setAttribute("category4", commonDAO.selectAll4());
        
        // index.jsp로 포워딩
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
