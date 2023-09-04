<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!--기본적인 공통 css-->
<!--이외 각자 페이지 css/js는 각자 추가할 것-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/signUp.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" ></script>

<script src="${pageContext.request.contextPath}/resources/user/js/signUp.js" defer></script>
<script src="${pageContext.request.contextPath}/resources/user/js/signUpAjax.js" defer></script>

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
               
               <div class="signup-container">
                <div class="signup-area">
                    <div class="signup-greeting">
                        <strong class="txt">회원가입을 진행해주세요!</strong>
                    </div>
                    <form id="login_form" name="login_form" action="joinOk.me" method="post" >
                            
                        <div class="input-text">    
                            <input type="text" id="email" name="userEmail" placeholder="이메일 입력" maxlength="100" >
                            <div class="checkId-result"></div>  
                            <input type="text" name ="userName" id="name"  placeholder="이름 입력" maxlength="100" >
                                                 
                            <input type="password" name ="userPassword" id="pw"  placeholder="비밀번호 입력" maxlength="100" >
                            <input type="password" name="userPassword2" id="pw2" placeholder="비밀번호 확인" maxlength="100" style="margin-bottom: -2px;">&nbsp;<span id="check"></span>
                            
                            <input type="text" id="phonenumber" name="userPhone" placeholder="휴대폰 번호 입력" maxlength="100" >
                            <input type="text" id="address" placeholder="주소 입력" name="userAddress" maxlength="100" style="width: 330px; margin-bottom: 20px;">
                            <button type="button" id="PostCodeSearch" >주소찾기</button>
                            <input type="text" id="address_detail" name="userDetailAddress" placeholder="상세주소 입력" maxlength="100" >                            
                        </div>    
                        <div class="button-signup">
                            <button class="sign-btn" disabled onclick="return join()">가입완료</button>             
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