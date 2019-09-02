<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
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
	Connection conn = null;

	try {
		String url = "jdbc:mysql://localhost:3309/mirim";
		String user = "test";
		String pass = "1234";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);
		out.println("연결 성공");
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from class");
		while(rs.next()) {
			
		}
		
		PreparedStatement pstmt = conn.prepareStatement();
		ResultSet rs2 = pstmt.executeQuery("select * from class");
		while(rs2.next()) {
			
		}
		
	} catch (Exception e) {
		out.println("연결 실패");
		e.printStackTrace();
	}
%>
</body>
</html>