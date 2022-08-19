<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>어플리케이션 기본 객체에 설정이 되어 있는 값을 확인하는 페이지</p>
	<%= application.getAttribute("myStr") %>
	<%= application.getAttribute("myInt") %>
	<%-- 값을 설정하고 나서, 서버를 껐다 키기 전까지는 언제든지 해당 값들을 getAttribute로 불러올 수 있음 --%>
</body>
</html>