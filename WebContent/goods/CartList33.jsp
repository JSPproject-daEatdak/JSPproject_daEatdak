<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈 장바구니 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/goods/css/GoodsCartPage.css" type="text/css"/>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/goods/js/GoodsCartPage.js" defer></script>
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
	  <main class="container">
                <div class="cart_main">
                    <div class="cart_main_top">
                        <div class="cart_name">
                            <p>장바구니</p>
                        </div>    
                    </div>
                    <div class="cart_main_bottom">
                    
                    
                        <div class="cart_mark">
                            <p class="symbols-outlined" >
                                <span class="material-symbols-outlined">
                                    error
                                </span>
                            </p>
                        </div>
                        <div>
                            <p>장바구니에 담긴 상품이 없습니다!</p>
                            <c:forEach var ="item" items="${itemList }">
                            	<c:out value ="${item.getGoodsNum()}"/>
                            </c:forEach>
                        </div>
                        
                    </div>
                </div>
            </main>
       </div>
       <div class="footer">
		<%@ include file="/footer.jsp"%>
	</div>
</body>
</html>