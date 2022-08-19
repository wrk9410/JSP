<%@page import="java.util.Date"%>
<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간</title>
</head>
<body>
<h1>A</h1>
<%-- <%
	Date time = new Date(System.currentTimeMillis());
	int a = time.getHours();
	int b = time.getMinutes();
	int c = time.getSeconds();
	
%>
<%= a+"시 "+b+"분 "+c+"초" %> --%>

<!-- 쌤 코드 -->
<%-- <p><%= LocalTime.now() %></p> --%>

<% Object result = request.getAttribute("result"); %>
<p><%= result %></p>

</body>
</html>