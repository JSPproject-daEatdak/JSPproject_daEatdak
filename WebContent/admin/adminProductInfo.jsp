<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>다잇닭</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/css/adminProductInfo.css">
<script
	src="${pageContext.request.contextPath}/resources/admin/js/adminProductInfo.js"
	defer></script>

<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>

<script>

/*   function fnDelete(goodsNum){
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href="goodsListDelete.ad?goodsNum=${goodInfo.goodsNum()}"};
		//Get 방식으로 정보를 넘길때 띄어쓰기 안하게 주의할 것
	}
}  
} */

</script>
</head>

<body>
	<main class="test">
		<div class="section-container">
			<!-- 좌측 관리자 메뉴-->
			<%@ include file="aside.jsp"%>

			<div class="admin_productInfo">
				<div class="PageName">
					<h2>상품 리스트</h2>
				</div>
				<hr style="width: 90%;">
				<div class="table-div">
					<div class="totalProdList">
						<form action="">
						<ul class="proUl">
					
							<c:choose>
								<c:when test="${not empty GoodsInfoList}">
									<c:forEach var="goodsInfo" items="${GoodsInfoList }">

										<li class="productScope">
											<div class="productList">
												<div style="width: 10%;">
													<span ><c:out value="${goodsInfo.getGoodsNum() }"  /></span>
												</div>
												&nbsp;&#124;&nbsp;
												<div style="width: 20%;" class="ellipsis">
													<span><c:out value="${goodsInfo.getCategoryName() }" /></span>
												</div>
												&nbsp;&#124;&nbsp;
												<div style="width: 20%;" class="ellipsis">
													<span><c:out value="${goodsInfo.getGoodsName() }" /></span>
												</div>
												&nbsp;&#124;&nbsp;

												<div style="width: 10%;">
													<span><c:out value="${goodsInfo.getGoodsPrice() }" /></span>
												</div>
												&nbsp;&#124;&nbsp;
												<div style="width: 10%;">
													<span><c:out
															value="${goodsInfo.getGoodsQuantity() }" /></span>
												</div>
												&nbsp;
												<div style="width: 50%">
													<span><button class="btnUpd" onclick="location.href='/admin/goodsListDelete.ad?goodsNumb=${goodsInfo.getGoodsNum()}'" >삭제</button></span> <span><button
															class="btnUpd"
															>수정</button></span>
															
															
												</div>
											</div>
										</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<li>
										<div>
											<span>등록된 물품이 없습니다.</span>
										</div>
									</li>
								</c:otherwise>
							</c:choose>



	
						</ul>
						</form>

					</div>

					<div class="memberInfo_search">
						<form action="/admin/goodsRegist.ad">
							<button>상품등록버튼</button>
						</form>
					</div>
					<br>

					<div class="pageing" style="margin: 15px auto;">
						<div class="pagination board-page">
							<div class="arrowPage pv" id="firstPage">
								<a class="btn01">&lt;</a>
							</div>
							<div class="arrowPage nt" id="lastPage">
								<a class="btn01">&gt;</a>
							</div>
						</div>
					</div>
					<br>



				</div>

			</div>
		</div>
	</main>
</body>
</html>