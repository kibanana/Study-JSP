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
	request.setCharacterEncoding("UTF-8"); //
	String name = request.getParameter("name");
%>

<%= "main.jsp에서 넘겨준 값은 " + name + "입니다." %>
</body>
</html>