<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getAttribute("reqAttr") %>
<%= request.getAttribute("reqInt") %>
<%-- request.getAttribute는 동일한 페이지에서만 값을 사용이 가능하고, 다른 페이지에서 확인할 경우 null로 확인 --%>
</body>
</html>