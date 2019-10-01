<%@page import="java.sql.*" %>
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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	
	Timestamp reg_date = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstat = null;
	String str = "";
	
	try {
		String url = "jdbc:mysql://localhost:3309/mirim";
		String user = "test";
		String pass = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);

		str = "Member 테이블에 접속 성공";
		
		String sql = "INSERT INTO member VALUES(?,?,?,?)";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, id);
		pstat.setString(2, pwd);
		pstat.setString(3, name);
		pstat.setTimestamp(4, reg_date);
		pstat.executeUpdate();
		
		str = "Member 테이블에 새로운 레코드를 추가했습니다";
	} catch(Exception e) {
		str = "Member 테이블에 새로운 레코드 추가 실패했습니다";
		e.printStackTrace();
	} finally {
		if(pstat != null) { try { pstat.close(); } catch(Exception e) { } }
		if(conn != null) { try { conn.close(); } catch(Exception e) { } }
	}
%>

<%= str %>
</body>
</html>