오늘 날짜를 보여줄 수 있는 jsp 페이지
java.util.Calendar
java.time.LocalDate








<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%%>: 자바 코드를 적을 수 있는 영역 --%>
	<%
		// scriptlet, 자바 코드를 적을 수 있는 영역
		System.out.println("사용자가 jsp 페이지를 요청했습니다.");
		int a = 10;
	%>
	<p>jsp 페이지 입니다.</p> <!-- JSP는 궁극적으로 html 문서임 -->
	<strong><%= java.time.LocalTime.now() %></strong> <br />
	<p>a의 값은 <%= a %>입니다.</p>
	<%--
	<p>b의 값은 <%= b %></p>
	<%
		int b = 20;
	%> 
	--%>
	
</body>
</html>