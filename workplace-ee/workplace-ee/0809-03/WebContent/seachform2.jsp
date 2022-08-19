<%@page import="java.util.ArrayList"%>
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
	<%-- 사용자가 대륙을 선택할 수 있게 --%>
	<%-- 선택한 대륙의 국가들의 이름, 인구를 볼 수 있는 (인구 내림차순 정렬) 페이지 --%>
	<form action="seachform3.jsp">
	
		<select name="C">
		<% 
		List<String> list = (List<String>) request.getAttribute("C");
		
		for(int i = 0; i < list.size(); i++) {
		%>
			<option value="<%= list.get(i) %>"><%= list.get(i) %></option>
		<% } %>
		</select>
		<input type="submit" />
		
	</form>
</body>
</html>