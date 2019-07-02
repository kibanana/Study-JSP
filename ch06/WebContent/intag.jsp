<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>홀수 출력</h3>
<%
	for(int i=0; i<100; i++) {
		if(i%2!=0) out.println("홀수입니다 : " + i);
	}
%>
<br>

<%= "** 액션 태그 역할 : 각 페이지간 이동 또는 빈즈 사용 등에 활용 **" %>
<br>
<%= "** 액션 태그 종류 : include, forward, plug-in, useBean,  **" %>
<br>
</body>
</html>