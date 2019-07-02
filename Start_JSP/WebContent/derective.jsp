<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
info="2019.04.02 am 11.52 modified twice by yewon kim"
session="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습</title>
</head>
<body>
<h2>page 디렉티브 연습 - info 속성</h2>
<%=getServletInfo() %>
<h2>page 디렉티브 연습 - info 속성</h2>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");	
	String strDate = format.format(now);
	out.println("오늘은 " + strDate);
%>

</body>
</html>