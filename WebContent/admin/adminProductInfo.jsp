<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>다잇닭</title>
    
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/adminProductInfo.css">
    <script src="${pageContext.request.contextPath}/resources/admin/js/adminProductInfo.js" defer></script>
    
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

</head>

<body>
    <main class="test">
        <div class="section-container">  <!-- 좌측 관리자 메뉴-->             
    	<%@ include file="aside.jsp" %>

            <div class="admin_productInfo">
                <div class="PageName">
                    <h2>상품 리스트</h2>
                </div>
                <hr style="width: 90%;">

                <div class="table-div">
                    <div class="totalProdList">
                            <ul class="proUl">
                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>001</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>소고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>002</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>돼지고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%" class="upndel">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>003</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>닭고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>004</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>건강식</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>001</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>소고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>002</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>돼지고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%" class="upndel">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>003</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>닭고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd upla">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>004</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>건강식</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>001</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>소고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>002</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>돼지고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%" class="upndel">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>003</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>닭고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>004</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>건강식</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>001</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>소고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>002</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>돼지고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%" class="upndel">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>003</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>닭고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="p	roductList">
                                        <div style="width: 10%;"><span>004</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>건강식</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>001</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>소고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>002</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>돼지고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%" class="upndel">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>003</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>닭고기</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd" onclick="location.href='adminProInfoUp.jsp'">수정</button></span>
                                        </div>
                                    </div>
                                </li>

                                <li class="productScope">
                                    <div class="productList">
                                        <div style="width: 10%;"><span>004</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 20%;" class="ellipsis"><span>건강식</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>가격</span></div>&nbsp;&#124;&nbsp;
                                        <div style="width: 10%;"><span>재고</span></div>&nbsp;&nbsp;
                                        <div style=" width: 50%">
                                            <span><button class="btnUpd del">삭제</button></span>
                                            <span><button class="btnUpd upload"><a href="${pageContext.request.contextPath}/admin/adminProInfoUp.jsp">수정</a></button></span>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                    </div>

                    <div class="memberInfo_search">
                        <button onclick="location.href='adminProductRegist.jsp'">상품등록버튼</button>
                    </div><br>

                    <div class="pageing" style="margin: 15px auto;">
                        <div class="pagination board-page">
                            <div class="arrowPage pv" id="firstPage"><a class="btn01">&lt;</a></div>
                            <div class="arrowPage nt" id="lastPage"><a class="btn01">&gt;</a></div>
                        </div>
                    </div><br>



                </div>

            </div>
        </div>
    </main>
</body>
</html>