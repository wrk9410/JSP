<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈 정답 여부</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

	<% String ding = request.getParameter("dingdong"); 
		if (ding.equals("서울")) {
		%>
			<div>정답</div]>
		<%
		} else {
		%>
			<div>틀림</div>
		<%
		}
	%>
	<%-- 자바 작성 영역은 '<%로 시작', '%>로 닫힘' | 닫은 후에 시작을 다시 하여도 쭉 이어서 실행함--%>
</body>
</html>