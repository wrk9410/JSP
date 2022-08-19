<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String continent = request.getParameter("continent");
	CountryDAO dao = new CountryDAO();
	/* List<String> */
	
	request.setAttribute("C", dao.getContin());
	
	request.getRequestDispatcher("seachform2.jsp")
			.forward(request, response);

%>