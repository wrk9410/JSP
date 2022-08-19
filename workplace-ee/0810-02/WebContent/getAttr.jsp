<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>${ requestScope.name1 }</p>
	<p>${ requestScope.name2 }</p>
	<p>${ applicationScope.name3 }</p>
	<p>${ requestScope.name4 }</p>
	<p>${ applicationScope.name4 }</p>
	<hr />
	<p>${ name1 }</p>
	<p>${ name2 }</p>
	<p>${ name3 }</p>
	<p>${ name4 }</p>
	<!-- Scope를 작성하지 않아도 이름(name)만 적으면 알아서 찾아 값을 출력시켜줌 -->
	<!-- 단, 범위가 좁은 것을 먼저 출력함(순서 : page > request > session > application ) -->
	<hr />
	<p>${ none }</p>
	<!-- 없을 경우 아무것도 출력안함 -->
</body>
</html>