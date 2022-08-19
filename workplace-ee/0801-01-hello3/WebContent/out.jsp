<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page autoFlush ="true" %> --%>
<!-- false일 경우 Flush가 가득차야 일어남 -->
<%
	out.println("<!DOCTYPE html>"); // 기존 <!DOCTYPE html>과 똑같이 작동
%>
<html>
<head>
<meta charset="UTF-8">
<title>out 기본객체</title>
</head>
<body>
	<h1>정적 텍스트</h1>
	<%= 1 + 2 + 3 %><br />

	<%
		out.println(1 + 2 + 3);
		out.println("<br />");
	%>

	<p>jsp의 모든 텍스트는 아웃 객체가 출력합니다.</p>

	<%
		boolean someBool = true;
	if (someBool) {
		out.println("<p>참일 때 출력해야하는 텍스트</p>");
	} else {
		out.println("<p>거짓일 때 출력해야하는 텍스트</p>");
	}
	%>
</body>
</html>