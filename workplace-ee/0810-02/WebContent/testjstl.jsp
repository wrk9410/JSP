<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- prefix: 작성한 jstl을 무엇으로 호출할지 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- jstl jar 검색 > 2번째 결과 > .jar 클릭 --%>
</head>
<body>
	<c:forEach var="i" begin="1" end="10"> <!-- i(이름) = 1(시작) ~ 10(끝) -->
		<c:if test="${ i % 2 == 0 }">
			<p>${ i }</p>
		</c:if>
	</c:forEach>
	<hr />
	<!--
	1.choose: switch~case문과 비슷
	2.when: 전부 true여도 처음의 true에서 break함
	3.otherwise: default와 비슷
	-->
	<c:choose>
		<c:when test="true">
			<p>첫번째 조건이 참일 때</p>
		</c:when>
		<c:when test="false">
			<p>두번째 조건이 참일 때</p>
		</c:when>
		<c:otherwise>
			<p>모든 조건이 참이 아닐 때</p>
		</c:otherwise>
	</c:choose>
</body>
</html>