<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>다잇닭</title>
    <!-- 폰트 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- 개인 resource -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/css/boardPasswordCheck.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath}/resources/board/js/boardPasswordCheckConfig.js" defer></script>
 </head>
  <body>
    <div class="side-banner-container">
      <!-- 사이드 배너 영역 -->
      <div class="side-banner">
      	<%@ include file ="/slideBanner.jsp" %>
      </div>
    </div>
    <div class="header-main-container">
    <div class="header">
    	<%@ include file ="/header.jsp" %>
    </div>
    <main>
	    <div class="board-container">
        <div class="board-main">
            <!-- 문의게시판 title -->
            <div class="board-title">
               <div class="title-text">문의 게시판</div>
            </div>

            <div class="password-check-container">
                <div class="password-check-box">
                    <div class="password-check-box-inner">
                        <b>비밀번호를 입력하세요.</b>
                        <form action= "/board/boardPasswordCheckConfigOk.bo" method="post">
                        	
                        	<input type="hidden" name="boardNum" value="${board.getBoardNum()}" />
	                        <input class="content-password" type="password" id="inputPassword" maxlength="4" name="boardPassword"/>
	                        <div class="inner-btnBox">
	                            <button class="btn cancle" onclick="history.go(-1)">취소</button>
	                            <button class="btn admit" type="submit">확인</button>
							<% String warningMessage = (String)request.getAttribute("warningMessage"); %>
							
							<%-- 경고 메시지가 있을 경우 JavaScript로 경고창을 표시합니다. --%>
							<% if (warningMessage != null && !warningMessage.isEmpty()) { %>
							    <script type="text/javascript">
							        // 경고 메시지를 표시합니다.
							        var warningMessage = '<%= warningMessage %>';
							        alert(warningMessage);
							
							        // 확인 버튼을 누를 때 페이지를 이동합
							    </script>
							<% } %>




	                        </div> 
	                        
	                    </form>     
                    </div>
                </div>
            </div>

        </div>
      </div>
    </main>
    </div>
    <div class="footer">
    	<%@ include file ="/footer.jsp" %>
    </div>
  </body>
</html>
