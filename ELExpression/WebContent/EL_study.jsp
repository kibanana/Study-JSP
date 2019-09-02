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
	String name = "홍길동";
%>

<%=10 %> : ${10} <br>
<%=99.99 %> : ${99.99} <br>
<%="Hong" %> : ${"Hong"} <br>
<%= name %> : ${name} <br>

<%= 1+1 %> : ${ 1+1 } <br>
<%= 1-1 %> : ${ 1-1 } <br>
<%= 1*1 %> : ${ 1*1 } <br>
<%= (double)1%2 %> : ${ 1.0%2 } <br>

<%= (1>2) ? 1 : 2 %> : ${(1>2) ? 1 : 2} <br>
<%= (1>2) || (1<2) %> : ${(1>2) || (1<2)} <br>

</body>
</html>