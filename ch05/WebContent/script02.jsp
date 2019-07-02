<%@page import="java.sql.Timestamp"%>
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
	Timestamp now = new Timestamp(System.currentTimeMillis());
%>

현재는 <%= now.getHours() %>시 <%=now.getMinutes() %>분입니다.

<%!
	String str1 = "전역변수";
%>

<%
	String str2 = "지역변수";

	out.println(str1 + "<br>");
	out.println(str2 + "<br>");
%>

태그로 출력 <br>
<%=str1 %> <br>
<%=str2 %> <br>



<%
	String str[] = {"JSP", "JAVA", "Android", "HTML5"};
	int i = (int)(Math.random() * str.length);
%>

<%= str[i] %>가 재밌다.
</body>
</html>