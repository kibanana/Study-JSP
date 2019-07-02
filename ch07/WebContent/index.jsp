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
	String name = request.getParameter("name");
	
%>

<h2>
index 페이지
</h2>

이름 : <%= name %>
<br>

</body>
</html>