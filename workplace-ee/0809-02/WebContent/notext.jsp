<%
	/*int result = 1 + 1;
	response.sendRedirect("./viewPage.jsp?result="+ result); */
	
	/*int result = 1 + 1;
	application.setAttribute("result", result);
	response.sendRedirect("./viewPage.jsp"); */
	
	/*int result = 1 + 1;
	request.setAttribute("result", result);
	response.sendRedirect("./viewPage.jsp");
	viewPage에서는 새로운 요청이 일어났기에(2번째 요청) request에 담은 값은 사라짐 */
	 
	int result = 1 + 1;
	request.setAttribute("result", result);
	request.getRequestDispatcher("/WEB-INF/viewPage.jsp")
		.forward(request, response);
	// forward: 흐름을 이어지게 만듦
	// 첫 번째에서 요청을 하지않고 forward로 값이 출력되는 두번째에서 요청하기에 request를 써도 값이 출력됨
	// 흐름이 그대로 이어지기에 URL도 notext로 확인됨
	/* viewPage를 요청못하게하기 위해서는 WEB-INF로 이동
	단, getRequestDispatcher의 경로도 바꾸어주어야 함 */
%>