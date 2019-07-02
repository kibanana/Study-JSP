<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responser 내장 객체</title>
</head>
<body>
<h2>현재 페이지는 1.jsp입니다</h2>

<%
	response.sendRedirect("2jsp");
%>

</body>
</html>