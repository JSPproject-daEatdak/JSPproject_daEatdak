<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!--기본적인 공통 css-->
<!--이외 각자 페이지 css/js는 각자 추가할 것-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/member/css/signupSelect.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="side-banner-container">
    <!-- 사이드 배너 영역 -->
    <div class="side-banner">
       <%@ include file="/slideBanner.jsp" %>  <!--상대경로로 각 페이지마다 맞게 작성 ex) ./slideBanner.jsp or ../ ...-->
    </div>
</div>

<!--푸터 하단 고정을 위한 Header 영역과 Main영역 컨테이너-->
<!--이 부분 생략 시 푸터 부분 어색해짐 반드시 넣을 것, 관리자 페이지는 제외-->
<!--해당 관련 css - min-height값은 추후에 완성본에서 조정할 예정이니 일단 넣을 것 -->
<div class="header-main-container">

      <!--헤더영역-->
    <div class="header">
         <%@ include file="/header.jsp" %>  <!--상대경로로 각 페이지마다 맞게 작성-->
      </div>

      <div class='main'>
            <main>
               <!--개인 페이지 작업영역-->
               
               <div class="signupselect-container">
                <div class="signupselect-area">
                    <div class="signupselect-greeting">
                        <strong class="txt">회원가입 방식을 선택해주세요!</strong>
                    </div>
                    <form id="login_form" name="login_form" action="join.me" method="post" >
                        <div class="input-group">                        
                        <div class="button-normal">
                            <div class="button-normal-section">  
                            <a type="button" href="/user/join.me" >아이디로 시작하기</a> 
                            </div>                     
                        </div>
                        <div class="button-kakao">
                            <a type="button" onclick="location.href='${pageContext.request.contextPath}/member/kakaoLogin.jsp'" >
                             <img src="${pageContext.request.contextPath}/resources/member/img/kakao_signup.png" alt="">
                            </a> 
                        </div>
                            
                        </div>

                    </form>
                </div>
            
            </div>
               
               
               
               
               
               
               
               
               
               
            </main>
      </div>

</div> <!--header-main-container 닫기-->


<!--푸터 영역-->
<div class="footer">
       <%@ include file="/footer.jsp" %>  <!--상대경로로 각 페이지마다 맞게 작성-->
</div>

</body>
</html>