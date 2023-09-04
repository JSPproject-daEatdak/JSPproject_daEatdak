<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.daeatdak.user.dto.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.daeatdak.user.dao.UserDAO"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
request.setCharacterEncoding("UTF-8");
UserDTO userDTO = new UserDTO();
UserDAO userDAO = new UserDAO();
List<UserDTO> list = userDAO.userList();
pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>다잇닭</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/adminMemberInfo.css">
    <script src="${pageContext.request.contextPath}/resources/admin/js/adminMemberInfo.js" defer></script>

    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>


</head>

<body>
    <main class="test">
        <div class="section-container">
    	<%@ include file="aside.jsp" %>
            
            <div class="admin_memberInfo">
                <div class="PageName">
                    <h2>회원정보</h2>
                </div>
                <hr style="width: 90%;">
                
                <div class="table-div">
                    <div class="table-scroll">
                        <table border="2" height="50"> <!--회원 정보 리스트 테이블-->
                            <thead class="t_head">
                                <tr class="t_head" style="width:100%;">
                                    <th class="t_head">
                                        <div class="th-div" style="width: 85px;">회원번호</div>
                                    </th>
                                    <th class="t_head">
                                        <div class="th-div" style="width: 80px;">이름</div>
                                    </th>
                                    <!--                                    <th class="t_head"><div style="width: 90px;">아이디</div></th>-->
                                    <th class="t_head">
                                        <div class="th-div" style="width: 160px;">이메일</div>
                                    </th>
                                    <th class="t_head">
                                        <div class="th-div" style="width: 120px;">휴대폰</div>
                                    </th>
                                    <th class="t_head">
                                        <div class="th-div" style="width: 300px;">주소</div>
                                    </th>
                                    <th class="t_head">
                                        <div class="th-div" style="width: 300px;">상세주소</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody id="table-list">
	                            <c:forEach var="i" items="${list }">
									<tr align="center">
										<td>${i.userNumber }</td>
										<td>${i.userName }</td>
										<td>${i.userEmail }</td>
										<td>${i.userPhone }</td>
										<td>${i.userAddress }</td>
										<td>${i.userDetailAddress }</td>
									</tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="pageing" style="margin: 15px auto;">
                        <div class="pagination board-page">
                            <div class="arrowPage pv" id="firstPage"><a class="btn01">&lt;</a></div>
                            <div class="arrowPage nt" id="lastPage"><a class="btn01">&gt;</a></div>
                        </div>
                    </div><br>

                    <div class="memberInfo_search">
                        <label>검색을 선택하세요.</label>
                        <select name="selectSearch" id="selectSearch">
                            <option name="memList" value="email">이메일</option>
                            <option name="memList" value="name">이름</option>
                        </select>
                        <input type="text" id="search" autocomplete="off" placeholder="아이디/이름을 입력하세요."
                            onkeyup="filter()">
                        <button class="memberSearchBtn" style="margin-right: 5px;">검색</button>
                    </div>

                </div>
            </div>
        </div>
    </main>
<<<<<<< HEAD
    
 </body>
</html>
</body>

</html>