<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responser 내장 객체</title>
</head>
<body>
<h2>현재 페이지는 2.jsp입니다</h2>

<%
	out.println("학교 규칙을 잘 준수하자");
	//response.sendRedirect("2jsp");
%>

<jsp:forward page="responseTest.jsp">

</body>
</html>