<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="top.jsp" %>

<% String id = request.getParameter("id"); %>

[로그인 성공]<br>

<span style="color: red; font-size: 15pt;">
<%= id %> 님 방문을 환영합니다.
</span>

<%@ include file="bottom.jsp" %>
</body>
</html>