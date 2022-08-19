import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CountryDAO {
	
	public List<String> getContin() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<>();
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
			pstmt = conn.prepareStatement
					("SELECT DISTINCT C FROM (SELECT Concat(Continent, '') AS C FROM world.country) AS A ORDER BY A.C");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String continent = rs.getString("C");
				list.add(continent);
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
		}
		return list;
	}
	
	
	public List<Country> getNameNPop(String continent) throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Country> list = new ArrayList<>();
		Country con;
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
			pstmt = conn.prepareStatement("SELECT Name, Population, continent FROM country WHERE Continent LIKE ? ORDER BY Population DESC;");
			pstmt.setString(1, continent);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				list.add(con = new Country(rs.getString("name"),rs.getInt("Population"),rs.getString("Continent")));
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
		}
		
		return list;
	}
	
	public static void main(String[] args) {
	}
}
