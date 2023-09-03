<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/goods/css/ChickenAllMain.css?ver=2.1" type="text/css"/>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/goods/js/pageing.js?ver=2" defer></script>
<title>다잇닭</title>
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
            <div class="product-chicken-page">
                <div class="page-top">
                <!-- 카테고리별 page-name 출력-->
                <c:choose >
                	<c:when test="${goodsList[0].getCategoryNum() == 1 }" >
                   		<h2 class="page-name">닭고기</h2>
                   	</c:when>
					<c:when test="${goodsList[0].getCategoryNum() == 2 }" >
                   		<h2 class="page-name">돼지고기</h2>
                   	</c:when>
                   	<c:when test="${goodsList[0].getCategoryNum() == 3 }" >
                   		<h2 class="page-name">소고기</h2>
                   	</c:when>
                   	<c:when test="${goodsList[0].getCategoryNum() == 4 }" >
                   		<h2 class="page-name">간편식&dot;음료</h2>
                   	</c:when>
                </c:choose>
                </div>
                <div class="product-inter">
                    <ul class="product-list">
						<c:forEach var ="goods" items ="${goodsList}"> 
                        <li class="list-info">             
                        	<c:set var ="imagePath" value=""/>
                        	<c:forEach var = "image" items ="${goodsImages }">
                        		<c:if test="${image.getGoodsNum()==goods.getGoodsNum()}">
                        			<c:set var ="imagePath" value ="${image.getGoodsImg() }"/>
                        		</c:if>
                        	</c:forEach>
                        	
                        	<c:if test ="${empty imagePath}">
                        		<c:set var="imagePath" value="resources/goods/img/Default.png"/>
                        	</c:if>
                        	
                            <div class="list">
                            	<form action="" method="get">
                                <figure class="img">
                                    <a href="${pageContext.request.contextPath}/goods/goodsBuy.go?goodsNum=${goods.getGoodsNum()}">
                                        <img class="chicken" src="${pageContext.request.contextPath}/${imagePath}" alt="상품이미지">
                                    </a>
                                </figure>
                                </form>
                                <div class="list-name-top">
                                	<c:choose >
                						<c:when test="${goodsList[0].getCategoryNum() == 1 }" >
                   							  <span>다있닭</span> 
                   						</c:when>
										<c:when test="${goodsList[0].getCategoryNum() == 2 }" >
                   							  <span>다있돈</span> 
                 					  	</c:when>
                  					 	<c:when test="${goodsList[0].getCategoryNum() == 3 }" >
                   							  <span>다있소</span> 
                  					 	</c:when>
                 					  	<c:when test="${goodsList[0].getCategoryNum() == 4 }" >
                   							  <span>다있닷</span> 
                  					 	</c:when>
               						 </c:choose>

                                </div>
                                <div class="list-name-bottom">
                                    ${goods.getGoodsName()}
                                </div>
                                <span class="list-price">${goods.getGoodsPrice()} 원</span>
                            </div>
                        </li>
                        </c:forEach>
                        </ul>
                   <!--
                        <li class="list-info">
                            <div class="list">
                               <form action="" method="get">
                                <figure class="img">
                                    <a href="/product/html/product_buy_page/prouctBuypage.html">
                                        <img class="chicken" src="${pageContext.request.contextPath}/resources/goods/img/chicken01.png" alt="상품이미지">
                                    </a>
                                </figure>
                                </form>
                                <div class="list-name-top">
                                    <span>다있닭</span> 
                                </div>
                                <div class="list-name-bottom">
                                    닭가슴살 스테이크 오리지널 100g
                                </div>
                                <span class="list-price">17,900원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <form action="" method="get">
                                <figure class="img">
                                    <a href="/product/html/product_buy_page/prouctBuypage.html">
                                        <img class="chicken" src="${pageContext.request.contextPath}/resources/goods/img/chicken01.png" alt="상품이미지">
                                    </a>
                                </figure>
                                </form>
                                <div class="list-name-top">
                                    <span>다있닭</span> 
                                </div>
                                <div class="list-name-bottom">
                                    닭가슴살 스테이크 오리지널 100g
                                </div>
                                <span class="list-price">17,900원</span>
                            </div>
                        </li>

                          -->

                    <div class="pageing">
                        <div class="arrow prev" onclick="">&lt;</div>
                        <ul class="page-box">
                        </ul>
                        <div class="arrow next">&gt;</div>
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