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
	request.setCharacterEncoding("UTF-8");
	String name = "Hong";
	String hobby = "Golf";
%>

request_01 이전 내용입니다.
<br>

<hr>
	<jsp:include page="request_02.jsp">
		<jsp:param name="name" value="<%= name %>" /> 
		<jsp:param name="hobby" value="<%= hobby %>" /> 
	</jsp:include>
<hr>

request_01 이후 내용입니다.
<br>
</body>
</html>