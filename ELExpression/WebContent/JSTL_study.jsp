<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var = "name2" value="홍길순" />
이름 : <c:out value="${name2}" /> <br>
<c:remove var="name2" />
이름 : <c:out value="${name2}" /> <br>

<%
try { %>
	<%= 2/0 %>
<%
} catch (Exception e) {
%>
	<%= e.getMessage() %>
<%
}
%>

<hr>

<c:catch var="msg">
	<%= 2/0 %>
</c:catch>
<c:out value="${msg}" />

<hr>

<%
	if((1+2)==3) { %>
		<%= "1 + 2 = 3" %>	
<%
	}
%>

<hr>

<c:if test="${1+2==2}">
	1 + 2 = 3
</c:if>

<hr>

<c:forEach var="i" begin="1" end="10" step="2">
	${i} <br>
</c:forEach>
</body>
</html>