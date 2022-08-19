<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>다음 문제의 답을 입력하세요</p>
	<p>대한민국의 수도는?</p>
	<form action="/daesu/quizDone.jsp" method="post" > <!-- form 태그에 action 속성 값을 설정하여
															submit 버튼을 누르면
															입력값을 처리할 수 있는 페이지(jsp)로 요청(이동) -->
		<!-- 사용자 입력을 받을 수 있는 form을 구성하세요
		정답과 틀림의 안내 결과 나오게 설정
		 -->
		<label>정답 <input type="text" name="dingdong"></label>
		<input type="submit" value="제출" />
	</form>
</body>
</html>