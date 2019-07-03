<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>주석의 활용법</h2>

<%
	StringBuffer sf = new StringBuffer("오늘은 수요일 수요일은 다먹는날 모레는 금요일 금요일은 집가는날");
	sf.reverse();
	
	out.println("객체의 내용 : " + sf.toString());
	
	String str = "소스 보기를 하면 화면에 표시 됩니다.";
%>


<!-- <%= str %>  -->

<!-- <% // out.println(str); %> -->
 
</body>
</html>