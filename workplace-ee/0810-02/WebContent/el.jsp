<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>JSP Expression Language</p>
	${ "qwer" }
	${ 123 }
	${ 55.432 }
	${ true }
	<%-- el: 출력할 때 사용 --%>
	<br />
	${ 1 + 2 }
	${true && false }
	<%-- 연산, 관계연산도 가능 --%>
	<br />
	${ pageContext.request.requestURI }
	<%-- get이 붙을 경우 el에서는 생략가능 --%>
	
	
	
</body>
</html>