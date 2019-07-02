<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
It's includeFile
<br>
<%
	String name = request.getParameter("name");
%>
<strong><%= name %></strong>
</body>
</html>