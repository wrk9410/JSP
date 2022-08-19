<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<p>로그인 처리 요청이 전달되었나요?</p>
	<%
		String id = request.getParameter("userid"); // request: 요청에 대한 정보를 가지고 있는 객체
		
		// 파라미터 이름이 없으면 null이 나옴
		// 해당 파라미터 값이 전달이 되었으나 입력값이 없으면 ""
		
		// 입력값이 있으면 xx님 반갑습니다.
		if (id.length() > 0) {
			out.println(id+"님 방가");
		} else {
			// response: 응답 객체
			out.println("입력해주세요.");
			response.sendRedirect("./login.jsp"); // else일 때 입력주소로 이동
			// sendRedirect: 출력문은 무시되고 바로 입력된 주소로 재요청되어 이동됨
			
		}
	%>
</body>
</html>