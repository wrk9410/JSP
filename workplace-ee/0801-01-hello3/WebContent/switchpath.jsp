<%
	String choice = request.getParameter("choice");
	
	if (choice.equals("fruit")) {
		response.sendRedirect("./fruit.jsp");
	} else {
		response.sendRedirect("./persons.jsp");
	}

%>