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
	String id = request.getParameter("id");
	String hobby = request.getParameter("hobby");
%>

<strong><%= id %></strong> 님의 취미는 <strong><%=hobby %></strong> 입니다.
</body>
</html>