<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ul, li 목룍 표현  -->
<% 
	List<String> list = (List<String>) request.getAttribute("countries"); // 상향캐스팅이되어있어 다운캐스팅을 함?
%>
<ul>
<% for(int i = 0; i < list.size(); i++) { %>
	<li> <%= list.get(i) %> </li>
<% } %>
</ul>

</body>
</html>