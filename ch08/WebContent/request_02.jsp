<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

It's request_02
<br>
<%
	String name = request.getParameter("name");
	String hobby = request.getParameter("hobby");
%>

<%= name %> 's hobby is <%= hobby %>
<br>
</body>
</html>