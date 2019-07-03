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
	String id = "Mirim";
	String hobby = "만화보기";
%>

request_01 이전 내용입니다.
<br>
<hr>

<jsp:forward page="forward_02.jsp">
	<jsp:param name="id" value="<%= id %>" />
	<jsp:param name="hobby" value="<%= hobby %>" />
</jsp:forward>

<hr>
request_01 이전 내용입니다.
<br>
</body>
</html>