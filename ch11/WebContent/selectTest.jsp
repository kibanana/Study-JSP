<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td width="100">아이디</td>
		<td width="100">비밀번호</td>
		<td width="200">이름</td>
		<td width="100">가입날짜</td>
	</tr>
	
	<%
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		String str = "";
	
		try {
			String url = "jdbc:mysql://localhost:3309/mirim";
			String user = "test";
			String pass = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			
			String sql = "SELECT * FROM member";
			
			pstat = conn.prepareStatement(sql);
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date"); %>
				
			<tr>
				<td><%= id %></td>
				<td><%= pwd %></td>
				<td><%= name %></td>
				<td><%= register %></td>
			</tr>	
		<% }
		} catch(Exception e) {
			
		} finally {
			if(rs != null) { try { rs.close(); } catch(Exception e) { } }
			if(pstat != null) { try { pstat.close(); } catch(Exception e) { } }
			if(conn != null) { try { conn.close(); } catch(Exception e) { } }
		}
	%>
</table>
</body>
</html>