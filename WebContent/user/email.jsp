<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>		<c:choose>
                            	<c:when test="${not empty getUserEmail}">
	                            <c:forEach var="user" items="${getUserEmail }">
									
										<c:out value="${user.getUserEmail() }"/>
										
								
								</c:forEach>
								</c:when>
									<c:otherwise>
											등록된 회원이 없습니다.
									</c:otherwise>
						</c:choose>
						</div>
 				
</body>
</html>