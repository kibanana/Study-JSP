<%@page import="java.net.URLEncoder"%>
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
	String name = "김예원";
	String encodedName = URLEncoder.encode(name, "UTF-8");
	response.sendRedirect("index.jsp?name="+encodedName);
%>
</body>
</html>