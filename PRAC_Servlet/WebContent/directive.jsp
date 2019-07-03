<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "2019.4.2 12:00 6번째 수정 by Choi"
    session="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습</title>
</head>
<body>
<h2>page 디릭티브 연습 - info 속성</h2>

<%= getServletInfo() %>
<br>

<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = format.format(now);
%>
오늘은 <%= strDate %> 입니다. <br>

</body>
</html>


















