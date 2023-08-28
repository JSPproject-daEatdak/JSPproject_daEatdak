<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/css/boardList.css" rel="stylesheet" type="text/css" />
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/board/js/boardList.js" defer></script>
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
    	<%@ include file="/header.jsp" %>
    </div>
    <main>
      <div class="board-container">
        <div class="board-main">
            <!-- 문의게시판 title -->
            <div class="board-title">
               <div class="title-text">문의 게시판</div>
               <p class="title-text-sub">자유롭게 질문할 수 있는 게시판 입니다.</p>
            </div>
            <!-- 게시판 리스트 container -->
            <div class="top">
              <div class="num">번호</div>
              <div class="title">제목</div>
              <div class="writer">글쓴이</div>
              <div class="date">작성일</div>
              <div class="count">조회수</div>
            </div>
            <div class="board-list">
              <!-- 항목별 제목 top으로 구분 -->

              <div class="post">
                <div class="num">12</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

              <div class="post">
                <div class="num">11</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>
              <div class="post">
                <div class="num">10</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 힘들다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

              <div class="post">
                <div class="num">9</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jspl">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>
              <div class="post">
                <div class="num">8</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

              <div class="post">
                <div class="num">7</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>
              

              <div class="post">
                <div class="num">6</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

              <div class="post">
                <div class="num">5</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>
              <div class="post">
                <div class="num">4</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 힘들다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

              <div class="post">
                <div class="num">3</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>
              <div class="post">
                <div class="num">2</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

              <div class="post">
                <div class="num">1</div>
                <div class="title"><a href ="${pageContext.request.contextPath}/board/view/boardView.jsp">코딩 너무 재밌다</a></div>
                <div class="witer">김성찬</div>
                <div class="date">2023-08-18</div>
                <div class="count">1056</div>
              </div>

            </div>
            <div class="board-list-bottom">
               <div class="board-search-container">
                    <form action=""> 
                      <select>
                        <option>제목</option>
                        <option>이름</option>
                      </select>
                      <input type="text" id="search" />
                      <button type="submit">
                        <span class="material-symbols-outlined">search</span>
                      </button>
                    </form>
               </div>
                <div class="board-page">
                  <!-- <a href="#" class="bt first"><<</a>
                  <a href="#" class="bt prev"><</a>
                  <a href="#" class="bt num on">1</a>
                  <a href="#" class="bt num">2</a>
                  <a href="#" class="bt num">3</a>
                  <a href="#" class="bt num">4</a>
                  <a href="#" class="bt num">5</a>
                  <a href="#" class="bt next">></a>
                  <a href="#" class="bt last">>></a> -->
                </div>
                <div class="bt-container">
                    <a href="${pageContext.request.contextPath}/board/view/boardWrite.jsp" class="board-write">등록</a>
                </div>
          </div>
        </div>
      </div>
    </main>
    </div>
    <div class="footer">
    	<%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
