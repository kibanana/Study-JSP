<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	response.setStatus(200); //정상실행 코드
%>

에러가 발생해따<br>
최대한 빨리 처리하게따<br>
<%-- 에러 처리 페이지에서만 exception 기본 내장 객체 사용 --%>
<strong>
예외 타입: <%=exception.getClass().getName() %>
</strong>
<br>
<strong>
예외 메시지: <%=exception.getMessage() %>
</strong>
<br>
<%
//바이트수를 늘린다
//익스플로러를 안쓴다
%>
</body>
</html>