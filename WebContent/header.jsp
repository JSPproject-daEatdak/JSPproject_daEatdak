<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/common/css/header.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/resources/common/js/header.js" defer></script>

<title>header</title>
</head>
<body>
<!-- header 전체영역 컨테이너 -->
<div class="header-container">
    <header class="header">
        <div class="header-menu-container">
        <!-- header 위쪽부분 - 로고/로그인/회원가입 영역 -->
        <div class="header-top">

            <!-- 로고-->
            <div class="header-logo-container">
                <a href='${pageContext.request.contextPath}/common/MainFullMenu.co' method="get">
                    <h4>다잇닭</h4>
                
                 <p>daEatdak</p> </a>
            </div>

            <!-- 로그인/회원가입 -->
            <div class="user-container">
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/member/login.jsp">
                            <span class="material-symbols-outlined">
                                lock
                            </span>
                            <h6>로그인</h6>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/member/signupSelect.jsp">
                            <span class="material-symbols-outlined">
                                person_add
                            </span>
                            <h6>회원가입</h6>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/board/boardList.jsp">
                            <span class="material-symbols-outlined">
                                support_agent
                            </span>
                            <h6>문의하기</h6>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/goods/GoodsContainCart.jsp">

                            <span class="material-symbols-outlined">
                                shopping_cart
                            </span>
                            <h6>장바구니</h6>
                        </a>
                    </li>
                </ul>
            </div>
        </div>


        <!-- header 메인메뉴 영역 -->
        <div class="nav-container">

            <!-- 메인메뉴 부분 -->
            <div class="nav-ul-container">
                <nav>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/goods/goodsList.go?categoryNum=1"><h4>닭고기</h4></a></li>
                       	<li><h4>|</h4></li>
                       	<li><a href="${pageContext.request.contextPath}/goods/goodsList.go?categoryNum=2"><h4>돼지고기</h4></a></li>
                       	<li><h4>|</h4></li>
                       	<li><a href="${pageContext.request.contextPath}/goods/goodsList.go?categoryNum=3"><h4>소고기</h4></a></li>
                       	<li><h4>|</h4></li>
                       	<li><a href="${pageContext.request.contextPath}/goods/goodsList.go?categoryNum=4"><h4>간편식 &dot; 음료</h4></a></li>     
                    </ul>
                </nav>
            </div>
            
           
            <!-- 검색 부분 -->
            <div class="search-container">
                <form action="/MyServlet" method="get"> 
                    <fieldset style="border: none;">
                        <legend style="display: none;">검색창</legend>
                        <label for="search">
                            <input type="text" id="search" value=""/>
                        </label>
                        <button type="submit">
                            <span class="material-symbols-outlined">
                            search
                            </span>
                        </button>
                    </fieldset>
                </form>
            </div>
        </div>
        </div>
         <!-- 상단 픽스 메뉴 -->
         <div class="nav-fix-menu-container" style="display: none;" >
            <div class="nav-fix-menu-content">
                <div class="nav-fix-title">
                    <a href='${pageContext.request.contextPath}/index.jsp' method="get">
                    <h4>다잇닭</h4>
                 </a>
                </div>
                <div class="nav-fix-menu">
                    <nav>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/goods/ChickenGoodsMain.jsp"><h4>닭고기</h4></a></li>
                            <li><h4>|</h4></li>
                            <li><a href="${pageContext.request.contextPath}/goods/PigGoodsMain.jsp"><h4>돼지고기</h4></a></li>
                            <li><h4>|</h4></li>
                            <li><a href="${pageContext.request.contextPath}/goods/CowGoodsMain.jsp"><h4>소고기</h4></a></li>
                            <li><h4>|</h4></li>
                            <li><a href="${pageContext.request.contextPath}/goods/CFGoodsMain.jsp"><h4>간편식 &dot; 음료</h4></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="search-container fix-search">
                    <form action=""> 
                        <fieldset style="border: none;">
                            <legend style="display: none;">검색창</legend>
                            <label for="search">
                                <input type="text" id="search" />
                            </label>
                            <button type="submit">
                                <span class="material-symbols-outlined">
                                search
                                </span>
                            </button>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </header>
</div>

</body>
</html>