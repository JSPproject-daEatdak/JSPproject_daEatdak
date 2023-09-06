<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!--기본적인 공통 css-->
<!--이외 각자 페이지 css/js는 각자 추가할 것-->
<<<<<<< HEAD
<<<<<<< HEAD:WebContent/member/login.jsp
=======
>>>>>>> 50f8a63762d93fbd1f4c22cef3344b070c012878
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/common/css/common.css"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<<<<<<< HEAD
=======
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/member/css/findPw.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
>>>>>>> 121fb62e16f02a5e9cdba46a5078512431374ef3:WebContent/user/findPw.jsp
=======
>>>>>>> 50f8a63762d93fbd1f4c22cef3344b070c012878
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/member/js/loginJS.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="side-banner-container">
		<!-- 사이드 배너 영역 -->
		<div class="side-banner">
			<%@ include file="/slideBanner.jsp"%>
			<!--상대경로로 각 페이지마다 맞게 작성 ex) ./slideBanner.jsp or ../ ...-->
		</div>
	</div>

	<!--푸터 하단 고정을 위한 Header 영역과 Main영역 컨테이너-->
	<!--이 부분 생략 시 푸터 부분 어색해짐 반드시 넣을 것, 관리자 페이지는 제외-->
	<!--해당 관련 css - min-height값은 추후에 완성본에서 조정할 예정이니 일단 넣을 것 -->
	<div class="header-main-container">

		<!--헤더영역-->
		<div class="header">
			<%@ include file="/header.jsp"%>
<<<<<<< HEAD

		</div>

		<div class='main'>
<<<<<<< HEAD:WebContent/member/login.jsp
			<main>
				<!--개인 페이지 작업영역-->
				<div class="login-container">
					<div class="login-area">
						<div class="login-greeting">
							<strong class="txt">안녕하세요 : ) <br> 다잇닭 입니다
							</strong>
						</div>

						<form id="login_form" name="login_form"
							action="${pageContext.request.contextPath}/member/loginOK.me"
							 method="post">

							<div class="input-group">
								<div class="input-text">
									<input type="text" id="userName" name="userName"
										placeholder="유저명" maxlength="100"> <label
										class="nameNull" style="display: none;">유저명을 입력하세요.</label> <input
										type="password" id="userPassword" name="userPassword"
										placeholder="비밀번호" maxlength="100"> <label
										class="pwNull" style="display: none">패스워드를 입력하세요.</label>

									<c:choose>
										<c:when test="${loginOk == false}">
											<label class="loginX" style="color: red;">아이디 혹은
												비밀번호가 틀렸습니다.</label>
										</c:when>
										<c:otherwise>
<!-- 											<label class="loginX" style="display: none">아이디 혹은 -->
<!-- 												비밀번호가 틀렸습니다.</label> -->
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="button-login">
								<button class="btnLogin">로그인</button>
							</div>
						</form>
						<div class="button-found">
							<button type="button"
								onclick="location.href='${pageContext.request.contextPath}/member/findPw.jsp' ">비밀번호
								찾기</button>
							<button type="button"
								onclick="location.href='${pageContext.request.contextPath}/member/findId.jsp'  ">아이디
								찾기</button>
						</div>
						<div class="button-kakaologin">
							<button type="button"
								onclick="location.href='/login/html/kakaologin.html' ">
								<img
									src="${pageContext.request.contextPath}/resources/member/img/kakao_login.png"
									alt="">
							</button>
						</div>
						<div class="button-signup">
							<button type="button"
								onclick="location.href='${pageContext.request.contextPath}/member/signupSelect.jsp' ">회원가입</button>
						</div>
					</div>
				</div>
			</main>
=======
				<main>
					<!--개인 페이지 작업영역-->
					<div class="pwfind-container">
                <div class="pwfind-area">
                    <div class="pwfind-greeting">
                        <strong class="txt">비밀번호 찾기</strong>
                    </div>
                    <form id="findpw_form" name="findpw_form" action="" method="post" >
                        <div class="input-group">
                        <div class="input-text">
                            <input type="text" placeholder="이메일 입력" maxlength="100" >
                            <input type="text" placeholder="이름 입력" maxlength="100" >
                            <input type="text" placeholder="휴대폰 번호 입력" maxlength="100" >
                        </div>                           
                        </div>
                        <div class="button-submit">
                            <button>확인</button>                       
                        </div>
                        <div class="login-back">
                            <button type="button" onclick="location.href='${pageContext.request.contextPath}/member/login.jsp' ">로그인 창으로 돌아가기</button>
                        </div>
                        <h2 id="txt">회원 비밀번호 출력 영역</h2>
                            
                        </div>

                    </form>
                </div>
					
					
					
					
					
					
					
					
					
				</main>
>>>>>>> 121fb62e16f02a5e9cdba46a5078512431374ef3:WebContent/user/findPw.jsp
		</div>
	</div>
=======
			<!--상대경로로 각 페이지마다 맞게 작성-->
		</div>

		<div class='main'>
			<main>
				<!--개인 페이지 작업영역-->
				<div class="pwfind-container">
					<div class="pwfind-area">
						<div class="pwfind-greeting">
							<strong class="txt">비밀번호 찾기</strong>
						</div>
						<form id="findpw_form" name="findpw_form"
							action="/user/findUserPasswordOk.me" method="post">
							<div class="input-group">
								<div class="input-text">
									<input type="text" placeholder="이메일 입력" name="userEmail" maxlength="100">
									<input type="text" placeholder="이름 입력" name="userName" maxlength="100">
									<input type="text" placeholder="휴대폰 번호 입력" name="userPhone" maxlength="100">
								</div>
							</div>
							<div class="button-submit">
								<button>확인</button>
							</div>
							<div class="login-back">
								<button type="button"
									onclick="location.href='/user/login.me' ">로그인
									창으로 돌아가기</button>
							</div>
						</form>
					</div>


				</div>









			</main>
		</div>

	</div>
	<!--header-main-container 닫기-->
>>>>>>> 50f8a63762d93fbd1f4c22cef3344b070c012878


	<!--푸터 영역-->
	<div class="footer">
		<%@ include file="/footer.jsp"%>
		<!--상대경로로 각 페이지마다 맞게 작성-->
	</div>

</body>
</html>