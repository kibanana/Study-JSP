<%@page import="mirim.hs.kr.LogonDBBean"%>
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
%>

<%= id %><br>
<%= pwd %><br>

<%
	LogonDBBean logon = LogonDBBean.getInstance();
	
	int check = logon.userCheck(id, pwd);
	
	if(check == 1) {
		Cookie cookie = new Cookie("coupang", id);
		cookie.setMaxAge(60*20);
		response.addCookie(cookie);
		response.sendRedirect("cookieMain.jsp");
	} else if (check == 0) {
		response.sendRedirect("cookieLoginForm.jsp");
	} else if (check == -1) {
		response.sendRedirect("insertMemberForm.jsp");
	}
%>
</body>
</html>