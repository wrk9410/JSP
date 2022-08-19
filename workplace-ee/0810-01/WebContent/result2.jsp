<%@page import="kr.co.greenart.Country"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
	<c:if test="${ not empty list }"> <!-- empty: 왼쪽 객체가 비어있는지 확인, null=true, size 0=true, ""=true 등 -->
		<ul>
			<c:forEach var="country" items="${ list }"> <!-- items에서는 el문을 작성해주어야 함 | list에서 country를 출력-->
				<li>${ country.name } ${ country.population }</li> <!-- country안에는 name과 population이 있으니 출력 -->
			</c:forEach>
		</ul>
	</c:if>
</body>
</html>