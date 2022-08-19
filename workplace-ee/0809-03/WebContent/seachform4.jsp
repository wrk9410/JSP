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
	<ul>
	<%-- <%
	List<String> name = (List<String>) request.getAttribute("name");
	List<String> contin = (List<String>) request.getAttribute("Continent");
	List<Integer> popul = (List<Integer>) request.getAttribute("Population");
	
	for (int i = 0; i < name.size(); i++) { %>
		<li>
		나라명: <%= name.get(i) %> | 
		대륙명: <%= contin.get(i) %> | 
		인구수: <%= popul.get(i) %>명
		</li>
	<% } %> --%>
	<%
	List<Country> list = (List<Country>) request.getAttribute("list");
	
	for (int i = 0; i < list.size(); i++) {
	%>
		<li>
		나라명: <%= list.get(i).getName() %> | 
		대륙명: <%= list.get(i).getContin() %> | 
		인구수: <%= list.get(i).getPopul() %>명
		</li>
	<% } %>
	</ul>
</body>
</html>