<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜덤 정수</title>
</head>
<body>
<h1>C</h1>
<%-- <%
	Random rd = new Random();
%>

<p><%= rd.nextInt(10) + 1 %></p> --%>

<!-- 쌤 코드 -->
<% Object result = request.getAttribute("result"); %>
<p><%= result %></p>

</body>
</html>