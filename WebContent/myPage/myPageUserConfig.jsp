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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/common/css/common.css"
	rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- 개인 resource -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/myPage/css/myPageUserConfig.css"
	rel="stylesheet" type="text/css" />


</head>
<body>
	<div class="side-banner-container">
		<!-- 사이드 배너 영역 -->
		<div class="side-banner">
			<%@ include file="/slideBanner.jsp"%>
		</div>
	</div>
	<div class="header-main-container">
		<div class="header">
			<%@ include file="/header.jsp"%>
		</div>
		<main>
			<div class="myPage-container">
				<!-- 마이 페이지 사이드 메뉴바 -->
				<div class="sidemenu">
					<!-- 사이드 메뉴바 아이템 -->
					<div class="side-item">
						<a href="${pageContext.request.contextPath}/myPage/myPageMain.jsp">
							<div class="content-text on">회원정보 수정</div>
						</a>
					</div>
					<div class="side-item">
						<a
							href="${pageContext.request.contextPath}/myPage/myPagePurchaseHistory.jsp">
							<div class="content-text">구매 내역</div>
						</a>
					</div>
					<div class="side-item">
						<a
							href="${pageContext.request.contextPath}/myPage/myPageWishListOk.mp?userNum='1'">
							<div class="content-text">찜 목록</div>
						</a>
					</div>
				</div>
				<div class="myPage-main">
					<!-- 마이 페이지 title -->

					<div class="myPage-title">
						<div class="title-text">회원정보 수정</div>
					</div>


					<form action="${pageContext.request.contextPath}/myPage/myPageUserConfigOk.mp" method="post" id="myPageForm">
						<%
						String userName = (String) session.getAttribute("userName");
						String userEmail = (String) session.getAttribute("userEmail");
						String userPassword = (String) session.getAttribute("userPassword");
						String addressNum = (String) session.getAttribute("addressNum");
						// 						String userPhone = (String) session.getAttribute("userPhone");
						%>



						<div class="myPage-main-contents">
							<div class="config-box">

								<div class="box name">
									<p>이름</p>
									<input type="text" value="<%=userName%>" id="userName"
										name="<userName" disabled>
<%-- 									<input type="text" value="<%=userName%>" id="userName" --%>
<!-- 										name="<userName" disabled> -->
								</div>

								<div class="box id">
									<p>아이디</p>
									<input type="text" value="zriag" disabled>
								</div>

								<div class="box password">
									<p>비밀번호</p>
									<input type="password" name="configPW" id="configPW"
										onchange="check_pw()" placeholder="비밀번호 입력" maxlength="100">
								</div>

								<div class="box password check">
									<p>비밀번호 확인</p>
									<input type="password" name="configPW2" id="configPW2"
										onchange="check_pw()" placeholder="비밀번호 확인" maxlength="100"
										style="margin-bottom: -2px;">&nbsp; <span id="check"
										class="pwCheck" style="display: none;">비밀번호가 일치하지
										않습니다.!</span>
								</div>

								<div class="box">
									<p>이메일</p>
									<div class="email" id="email">
										<input name="email1" id="email1" type="text"
											placeholder="이메일 입력"> @ <input name="email2"
											id="email2" type="text"> <select name="select_email"
											onChange="selectEmail(this)">
											<option value="">선택하세요</option>
											<option value="naver.com">naver.com</option>
											<option value="google.com">google.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="kakao.com">kakao.com</option>
											<option value="1">직접입력</option>
										</select> <input name="email2_input" type="text" style="display: none;">
									</div>
									<span id="check" class="mailCheck" style="display: none;">이메일을 입력하세요.</span>
								</div>

								<div class="box phone">
									<p>휴대전화</p>
									<input type="text" value="" id="userPhone" name="userPhone">
									<span id="check" class="phoneCheck" style="display: none;">번호를 입력하세요.</span>
								</div>
								<div class="box address">
									<div>
										<p>주소</p>
										<input type="text" value="노원구 상계동" id="adress">
<%-- 										<input type="text" value="<%=addressNum%>" id="adress"> --%>
										<button class="address-btn">주소찾기</button>
									<span id="check" class="adressCheck" style="display: none;">번호를 입력하세요.</span>
									</div>
									<input class="detail-address" type="text" value="101동 301호">
								</div>
							</div>
						</div>
						<div>
							<button class="updateBtn"
								style="margin-top: 10px; background-color: rgb(202, 46, 46); color: white; float: right; border-radius: 10%; cursor: pointer;">수정</button>
						</div>
					</form>


				</div>
			</div>
		</main>
	</div>
	<div class="footer">
		<%@ include file="/footer.jsp"%>
	</div>
	<script
	src="${pageContext.request.contextPath}/resources/myPage/js/myPageUserConfig.js">
</script>
</body>
</html>