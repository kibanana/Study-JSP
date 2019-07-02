<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String id = request.getParameter("id"); %>
[로그인 성공]<br>

<b>
	<font color="red" size="5">
	<%= id %>님 방문을 환영합니다.
	</font>
</b>
</body>
</html>