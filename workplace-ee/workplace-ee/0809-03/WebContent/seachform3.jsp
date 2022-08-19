<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<%
	/* Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String continent = request.getParameter("C");
	
	List<String> name = new ArrayList<>();
	List<String> contin = new ArrayList<>();
	List<Integer> popul = new ArrayList<>();
	
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
		pstmt = conn.prepareStatement("SELECT Name, continent, Population FROM country WHERE Continent LIKE ? ORDER BY Population DESC;");
		pstmt.setString(1, continent);
		rs = pstmt.executeQuery();
		
		
		while(rs.next()) {
			name.add(rs.getString("name"));
			contin.add(rs.getString("Continent"));
			popul.add(rs.getInt("Population"));
		}
		
	} finally {
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	} */
	
	String continent = request.getParameter("C");
	CountryDAO dao = new CountryDAO();
	
	request.setAttribute("list", dao.getNameNPop(continent));
	request.getRequestDispatcher("seachform4.jsp")
			.forward(request, response);

%>

