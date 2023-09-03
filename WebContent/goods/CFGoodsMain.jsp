<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/common/img/logoPic.png" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/goods/css/CFAllMain.css" type="text/css"/>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/goods/js/pageing.js" defer></script>
<title>다잇닷</title>
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
            <div class="product-beverage-page">
                <div class="page-top">
                    <h2 class="page-name">건강식/음료</h2>
                </div>
                <div class="product-inter">
                    <ul class="product-list">
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="${pageContext.request.contextPath}/goods/view/GoodsBuyPage.jsp">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage01.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    프로틴어스 프로틴러쉬 프로 초코 250ml
                                </div>
                                <span class="list-price">14,250원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage02.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                   프로틴어스 난백 프로틴 초코볼 혼합30g
                                </div>
                                <span class="list-price">24,600원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                        <li class="list-info">
                            <div class="list">
                                <figure class="img">
                                    <a href="">
                                        <img class="beverage" src="${pageContext.request.contextPath}/resources/goods/img/beverage03.png">
                                    </a>
                                </figure>
                                <div class="list-name-top">
                                    <span>다잇닷</span> 
                                </div>
                                <div class="list-name-bottom">
                                    뉴하비츠 과일품목 흑마늘 360ml
                                </div>
                                <span class="list-price">57,000원</span>
                            </div>
                        </li>
                    </ul>
                    <div class="pageing">
                        <div class="arrow prev" id="first">&lt;</div>
                        <ul class="page-box">
                      
                        </ul>
                        <div class="arrow next" id="last">&gt;</div>
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