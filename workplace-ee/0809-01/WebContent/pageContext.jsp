<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>context가 뭔가요?</p>
	<%
		// context: 정보가 담겨있고, 그 정보를 개발자가 꺼내올 수 있게 해주는 것
		ServletRequest req = pageContext.getRequest(); // getRequest로 값을 가져올 수 있다
		out.println(req == request);
		out.println("<br />");
		ServletResponse resp = pageContext.getResponse();
		out.println(resp == response);
	%>
</body>
</html>