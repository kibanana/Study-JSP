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
	String pageName = request.getParameter("pageName");
	
	pageName += ".jsp";
%>

include 하기 이전의 내용입니다.

<hr>
<%--  <%@ include file="includeFile.jsp" %> --%>
<jsp:include page="<%=pageName%>" />
<hr>

include 한 이후의 내용입니다.
<br>
</body>
</html>