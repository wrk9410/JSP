<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		입력폼.
		사용자 이름 (필수!!!)
		사용자 나이 (필수!!!)
		
		'(이름),(나이) 환영합니다~' 출력
	 -->
	 <form action="./personresult.jsp">
	 	<label>이름<input type="text" name="name"></label>
	 	<label>나이</label><input type="number" name="age"></label>
	 	<input type="submit" value="로그인">
	 </form>
	 
	 
	 
</body>
</html>