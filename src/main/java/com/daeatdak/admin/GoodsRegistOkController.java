package com.daeatdak.admin;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daeatdak.Execute;
import com.daeatdak.Result;
import com.daeatdak.admin.dao.AdminDAO;
import com.daeatdak.admin.dao.FileDAO;
import com.daeatdak.admin.dto.AdminDTO;
import com.daeatdak.admin.dto.FileDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class GoodsRegistOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServerException {
 
		String dynamicUR="";
	
		
		
		String UPLOAD_PATH = request.getSession().getServletContext().getRealPath("/") + "upload/" + dynamicUR;
		final int FILE_SIZE = 1024 * 1024 * 5; // 5MB
//		final String UPLOAD_PATH = "/WebContent/upload/";

		MultipartRequest multipartRequest = new MultipartRequest(request, UPLOAD_PATH, FILE_SIZE, "utf-8", new DefaultFileRenamePolicy());

		System.out.println(UPLOAD_PATH);
		
		FileDAO fileDAO = new FileDAO();
		FileDTO fileDTO = new FileDTO();
		AdminDTO adminDTO = new AdminDTO();
		AdminDAO adminDAO = new AdminDAO();
		int adminGoodsNumber=0;
		/*
		 * ImageDAO imageDAO = new ImageDAO(); ImageDTO imageDTO = new ImageDTO();
		 */
		Result result = new Result();

		
		
		/*
		 * imageDTO.setGoodsImg(request.getParameter("dgoodsMainImg"));
		 * imageDTO.setGoodsDetailImg1(request.getParameter("goodsDetailImg1"));
		 * imageDTO.setGoodsDetailImg1(request.getParameter("goodsDetailImg2"));
		 * imageDTO.setGoodsDetailImg1(request.getParameter("goodsDetailImg3"));
		 * imageDTO.setGoodsDetailImg1(request.getParameter("goodsDetailImg4"));
		 * imageDTO.setGoodsDetailImg1(request.getParameter("goodsDetailImg5"));
		 * 
		 * imageDAO.goodsRegist(imageDTO);
		 */
		
		/*
		 * int id = imageDAO.lastId();
		 */		
		
		adminDTO.setGoodsName(multipartRequest.getParameter("goodsName"));
		adminDTO.setGoodsQuantity(Integer.valueOf( multipartRequest.getParameter("goodsQuantity")));
		adminDTO.setGoodsPrice(Integer.valueOf(multipartRequest.getParameter("goodsPrice")));
		adminDTO.setGoodsCategory(Integer.valueOf(multipartRequest.getParameter("goodsCategory")));

		adminDAO.goodsRegist(adminDTO);
		adminGoodsNumber = adminDAO.getSequence();

//		
//		
//
//		
//		
		int categoryValue = (Integer.valueOf(multipartRequest.getParameter("goodsCategory")));
		
		
		if(categoryValue==1) {
			dynamicUR ="chicken/";
			UPLOAD_PATH = request.getSession().getServletContext().getRealPath("/") + "upload/chicken/";
	
		}else if(categoryValue==2) {
			dynamicUR ="meat/";

			UPLOAD_PATH = request.getSession().getServletContext().getRealPath("/") + "upload/meat/";

		}else if (categoryValue==3) {
			dynamicUR ="pork/";

			UPLOAD_PATH = request.getSession().getServletContext().getRealPath("/") + "upload/pork/";

		}else if(categoryValue==4){
			dynamicUR ="ccc/";

			UPLOAD_PATH = request.getSession().getServletContext().getRealPath("/") + "upload/ccc/";

		}

		System.out.println(UPLOAD_PATH);
		System.out.println(categoryValue+"카테고리번호");
		
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasMoreElements()) {
			String filePath = UPLOAD_PATH;
			String name = fileNames.nextElement();
			String fileSystemName = multipartRequest.getFilesystemName(name);
			String fileOriginalName = multipartRequest.getOriginalFileName(name);
			if(fileSystemName == null) {continue;}
			fileDTO.setFilePath(filePath);
			fileDTO.setFileSystemName(fileSystemName);
			fileDTO.setFileOriginalName(fileOriginalName);
			fileDTO.setGoodsNumber(adminGoodsNumber);
			
			System.out.println(fileDTO);
			fileDAO.insert(fileDTO);


		}

//		imageDAO.goodsRegist(imageDTO);
		
		result.setRedirect(true);
		result.setPath("/admin/adminProductInfo.jsp");
		
		return result;	}

}
