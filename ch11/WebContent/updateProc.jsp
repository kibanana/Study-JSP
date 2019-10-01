<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
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

	Connection conn = null;
	PreparedStatement pstat = null;
	ResultSet rs = null;
	
	try {
		String url = "jdbc:mysql://localhost:3309/mirim";
		String user = "test";
		String pass = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);
		
		String sql = "SELECT pwd FROM member WHERE id = ?";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, id);
		rs = pstat.executeQuery();
		
		if(rs.next()) {
			String rPwd = rs.getString("pwd");
			if(pwd.equals(rPwd)) {
				sql = "UPDATE member SET name = ? WHERE id = ?";
				pstat = conn.prepareStatement(sql);
				pstat.setString(1, name);
				pstat.setString(2, id);
				pstat.executeUpdate();
				out.println("계정의 이름을 변경하였습니다.");
			} else {
				out.println("비밀번호가 틀립니다.");
			}
		} else {
			out.println("아이디가 존재하지 않습니다");
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(pstat != null) { try { pstat.close(); } catch(Exception e) { } }
		if(conn != null) { try { conn.close(); } catch(Exception e) { } }
	}
%>
<meta http-equiv="refresh" content="1; url=selectTest.jsp">
</body>
</html>