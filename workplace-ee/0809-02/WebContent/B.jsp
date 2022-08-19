<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜</title>
</head>
<body>
<h1>B</h1>
<%-- <% SimpleDateFormat sdf
	= new SimpleDateFormat("yyyy-MM-dd");

	Date d = new Date();
	String day = sdf.format(d); %>
	
<%= day %> --%>

<!-- 쌤 코드 -->
<%-- <p><%= LocalDate.now() %></p> --%>

<% Object result = request.getAttribute("result"); %>
<p><%= result %></p>

</body>
</html>