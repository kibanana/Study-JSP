<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="top.jsp" %>
<h1>include 연습</h1>
<em>
include : 여러 jsp 파일에서 공통으로 사용되는 부분을 별도의 파일로 만들어
필요할때마다 불러 사용한다.
</em>

<br>
========================== 액션 태그를 이용한 include ==========================
<br>

<span style="color: red; font-size: 30px;">
<jsp:include page="intag.jsp" />
</span>

<br>

<span style="color: blue; font-size: 30px;">
<jsp:include page="intag1.jsp">
	<jsp:param name="name" value="Kim Yewon" />
</jsp:include>
</span>

<br>
========================== 액션 태그를 이용한 include ==========================
<br>
main.jsp<br>

<%@ include file="bottom.jsp" %>
</body>
</html>