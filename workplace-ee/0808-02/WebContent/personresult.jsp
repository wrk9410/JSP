<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	 	String name = request.getParameter("name");
		String age = request.getParameter("age");
		// int a = Integer.parseInt(name);
		// out.println(a);
		
		/*if (!name.equals("") && !name.contains(" ") && !age.equals("")) {
			out.println("("+age+", "+name+")"+"님 환영합니다.");
		} else {
			out.println("이름 또는 나이가 입력되지 않았습니다.");
		}*/
		
		// 쌤 코드
		name = name.trim(); // 앞, 뒤의 공백 없애줌(중간의 공백은 없애주지않음)
		if (age == null || age.trim().length() == 0) {
			response.setStatus(400);
			out.println("잘못된 입력");
		} else {
			int age1 = Integer.valueOf(age);
			
			if (name.length() == 0){
				response.sendRedirect("./person.jsp");
			} else {
				out.print("("+name+", "+age1 + ") 님 환영합니다.");
			}
		}
		
	 %>
</body>
</html>