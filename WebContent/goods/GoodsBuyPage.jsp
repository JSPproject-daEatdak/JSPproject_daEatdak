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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/goods/css/GoodsBuyPage.css?ver=1" type="text/css"/>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/goods/js/GoodsBuyPage.js?ver=2" defer></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>상품구매페이지</title>
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
                <div class="product-buy-page">
                    <div class="product-info-top">
                        <div class="product-info-top-left">
                            <figure class="product-img">
                                <img src="${pageContext.request.contextPath}/${goodsImages.getGoodsImg()}">
                            </figure>
                        </div>
                        <div class="product-info-top-right">
                            <div class="product-name">
                                <div class="title">
                                <c:choose>
                                	<c:when test="${goodsList.getCategoryNum()==1 }"><h1>[다잇닭]</h1></c:when>
                                	<c:when test="${goodsList.getCategoryNum()==2 }"><h1>[다잇돈]</h1></c:when>
                                	<c:when test="${goodsList.getCategoryNum()==3 }"><h1>[다잇소]</h1></c:when>
                                	<c:when test="${goodsList.getCategoryNum()==4 }"><h1>[다잇닷]</h1></c:when>
                                </c:choose>
                                    <h1>${goodsList.getGoodsName()}</h1>
                                </div>
                                <div class="price">
                                    <span>판매가</span>
                                    <span>${goodsList.getGoodsPrice()}원</span>
                                </div>
                            </div>    
                            <div class="product-name-detil">
                                <div class="detil1">
                                    <ul>
                                        <li>
                                            배송방법  
                                        </li>
                                        <li>
                                            특급배송
                                        </li>
                                    </ul>
                                </div>
                                <div class="detil2">
                                    <ul class="detil2-ul">
                                        <li>
                                            배송정보
                                        </li>
                                        <li class="detil2-li">
                                            <ul class="detil2-li-ul">
                                                <li>
                                                    올인원
                                                </li>
                                                <li>
                                                    CJ대한통운
                                                </li>
                                                <li>
                                                    롯데택배
                                                </li>
                                                <li>
                                                    쿠팡
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="detil3">
                                    <ul class="detil3-ul">
                                        <li>
                                            당일출고
                                        </li>
                                        <li class="detil3-li">
                                            <ul class="detil3-li-ul">
                                                <li>
                                                    평일 오후 4시 까지 결제시 당일 출고 됩니다.
                                                </li>
                                                <li>
                                                    (빠른 배송을 위해 일용일에 출고될 수 있습니다.)         
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="buy-set">
                                <form class="product-quantity" action="" method="">
                                    <div>
                                        <span>수량</span>
                                    </div>
                                    <div>    
                                        <button type="button" class="plus">+</button>
                                        <span class="number">0</span>
                                        <button type="button" class="minus">-</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="product-info-bottom">
                        <div class="product-info">
                           <div  class="choice">찜</div>
                           <div class="cart" id="addToCart">장바구니</div>
                           <div class="buy" onclick="toController('${pageContext.request.contextPath}/goods/toCart.go?goodsList=${goodsList.getGoodsNum()}')">바로구매</div>
                        </div>
                    </div>
                    <div class="product-cart-movemodal">
                        <div>장바구니에 추가되었습니다</div>
                        <div> 장바구니로 이동하세요</div>
                    </div>
                    <div class="product-cart-loginmodal">
                        <div>로그아웃 상태입니다.</div>
                        <div> 계속하시려면 로그인해주세요</div>
                    </div>
                    <div class="product_deteil_area">
                        <p>상품정보</p>
                    
                        <div class="product_deteil_info">
                            	<img src="${pageContext.request.contextPath}/${goodsImages.getGoodsDetailImg1()}">
                            <c:if test ="${not empty goodsImages.getGoodsDetailImg2() }">
                            	<img src="${pageContext.request.contextPath}/${goodsImages.getGoodsDetailImg2()}">
                            </c:if>
                            <c:if test ="${not empty goodsImages.getGoodsDetailImg3() }">
                            	<img src="${pageContext.request.contextPath}/${goodsImages.getGoodsDetailImg3()}">
                            </c:if>
                            <c:if test ="${not empty goodsImages.getGoodsDetailImg4() }">
                            	<img src="${pageContext.request.contextPath}/${goodsImages.getGoodsDetailImg4()}">
                            </c:if>
                            <c:if test ="${not empty goodsImages.getGoodsDetailImg5() }">
                            	<img src="${pageContext.request.contextPath}/${goodsImages.getGoodsDetailImg5()}">
                            </c:if>

                        </div>
                    </div>
                    <div class="deteil_more">
                        <span class="open">
                            상품정보 더보기
                        </span>
                        <span class="material-symbols-outlined">
                            expand_more
                        </span>
                    </div>
                </div>    
            </main>
	</div>
	<div class="footer">
		<%@ include file="/footer.jsp"%>
	</div>
</body>
    <script>
    // 클릭 이벤트 핸들러 등록
    document.getElementById("addToCart").addEventListener("click", function() {
        // 장바구니에 상품 추가 로직을 수행
        addToCart();
    });

    function addToCart() {
        var goodsNum = "${goodsList.getGoodsNum()}";
        var url = "${pageContext.request.contextPath}/goods/toCart.go";
        
        // AJAX 요청
        $.ajax({
            type: "GET",
            url: url,
            data: { goodsNum: goodsNum },
            success: function(response) {
                // 성공 시 수행할 동작
                let carts=document.querySelector('.cart');
				let modals=document.querySelector('.product-cart-movemodal');
				carts.addEventListener('click',function(){
  			 	modals.style.display='flex';
    			setTimeout(function() {
      			modals.style.display='none';
   				 }, 1000);
			})
            },
            error: function(xhr, status, error) {
                // 오류 시 수행할 동작
                console.error("오류 발생: " + error);
                let carts=document.querySelector('.cart');
				let modals=document.querySelector('.product-cart-loginmodal');
				carts.addEventListener('click',function(){
  			 	modals.style.display='flex';
    			setTimeout(function() {
      			modals.style.display='none';
   				 }, 1000);
			})
            }
        });
    }
</script>
</html>